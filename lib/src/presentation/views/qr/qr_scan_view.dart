import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../config/router/app_router.dart';
import '../../../utils/constants/assets.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/strings.dart';

class QrScanView extends StatefulWidget {
  const QrScanView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QrScanViewState();
}

class _QrScanViewState extends State<QrScanView> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool isFlash = false;

  bool isQrResult = false;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startScan();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }

  startScan() async {
    await controller?.resumeCamera();
  }

  startFlash() async {
    await controller?.toggleFlash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          !isQrResult
              ? Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      _buildQrView(context),
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        top: 50.0,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      appRouter.pop();
                                    },
                                    child: SvgPicture.asset(
                                      ic_close,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isFlash = !isFlash;
                                        startFlash();
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      width: 24,
                                      height: 24,
                                      colorFilter: const ColorFilter.mode(
                                          Colors.white, BlendMode.srcIn),
                                      isFlash ? ic_flash : ic_flash_off,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        bottom: 30.0,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            border: Border.all(
                                                color: primaryColor,
                                                width: 1.5),
                                            color: primaryColor),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: SvgPicture.asset(
                                            ic_scan,
                                            fit: BoxFit.fill,
                                            width: 19,
                                            height: 19,
                                          ),
                                        ))
                                  ],
                                ),
                              )),
                        ),
                      )
                    ],
                  ))
              : Container(
                  color: Colors.black.withOpacity(0.5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 250.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        isQrResult = true;
        showCustomDialog(context);
        print(
            'Scan result  code -->>> ${scanData.code} -->>  code -->>> ${scanData.format.toString()} -->>');
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    print('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void showCustomDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            height: 280,
            width: 320,
            child: SizedBox.expand(
                child: Material(
              // <--- Provide Material
              type: MaterialType.transparency,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Congratulations!",
                      style: TextStyle(
                          fontSize: 25,
                          color: darkBlue,
                          fontFamily: openSansNormal,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Your License has been activated!",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: openSansNormal,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  SvgPicture.asset(
                    ic_done,
                    fit: BoxFit.fill,
                    height: 135,
                    width: 135,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        minWidth: 150,
                        height: 40.00,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.00)),
                        onPressed: () async {},
                        child: const Text(
                          close,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: openSansNormal,
                          ),
                        ),
                        color: primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            )),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
          ),
        );
      },
    );
  }
}
