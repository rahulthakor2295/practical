import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/router/app_router.dart';
import '../../../domain/models/responses/login_response.dart';
import '../../../utils/constants/assets.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/strings.dart';
import '../../../utils/reference/my_shared_reference.dart';
import '../../widgets/common_widgets.dart';

class AddressManagementView extends StatefulWidget {
  const AddressManagementView({Key? key}) : super(key: key);

  @override
  State<AddressManagementView> createState() => _AddressManagementViewState();
}

class _AddressManagementViewState extends State<AddressManagementView> {
  late LoginData? loginData;
  late var cubit;

  @override
  void initState() {
    super.initState();

    // cubit = context.read<AddressManagementCubit>();
    cubit.getAddress();

    var preferences = MySharedPreference();
    preferences.getBoolValue(keyIsLogin).then((isLogin) => {setState(() {})});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      // Container(
      //     width: double.infinity,
      //     child: Stack(
      //       fit: StackFit.passthrough,
      //       children: <Widget>[
      //         SvgPicture.asset(
      //           ic_rectAppbar,
      //           fit: BoxFit.fill,
      //           height: 150,
      //         ),
      //         Container(
      //           child: Padding(
      //             padding: const EdgeInsets.only(top: 25.0),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: <Widget>[
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 60.0, left: 26),
      //                   child: Row(
      //                     children: [
      //                       InkWell(
      //                         onTap: () {
      //                           appRouter.pop();
      //                         },
      //                         child: SvgPicture.asset(
      //                           ic_arrow_left,
      //                         ),
      //                       ),
      //                       const SizedBox(
      //                         width: 10,
      //                       ),
      //                       const Text(
      //                         AddressManagement,
      //                         style: TextStyle(
      //                             fontSize: 26,
      //                             color: Colors.white,
      //                             fontFamily: openSansNormal,
      //                             fontWeight: FontWeight.w600),
      //                       )
      //                     ],
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     )),
      // Padding(
      //   padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
      //   child: MaterialButton(
      //     minWidth: double.maxFinite,
      //     height: 45.00,
      //     shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(26.00)),
      //     onPressed: () async {
      //       appRouter.push(const AddAddressViewRoute());
      //     },
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const Icon(
      //           Icons.add,
      //           size: 20,
      //           color: white,
      //         ),
      //         const SizedBox(
      //           width: 5,
      //         ),
      //         const Text(
      //           addNewAddress,
      //           style: TextStyle(
      //             fontSize: 20,
      //             color: Colors.white,
      //             fontFamily: openSansNormal,
      //           ),
      //         )
      //       ],
      //     ),
      //     color: primaryColor,
      //   ),
      // ),
      // BlocConsumer<AddressManagementCubit, AddressManagementState>(
      //   listener: (context, state) {
      //     if (state is AddressDeleteStateSuccess) {
      //       if (state.deleteResponse?.status == false) {
      //         cubit.getAddress();
      //         snackBar(context, "${state.deleteResponse?.message}");
      //       } else {
      //         snackBar(context, "${state.deleteResponse?.message}");
      //         cubit.getAddress();
      //       }
      //     } else if (state is AddressManagementStateError) {
      //       snackBar(context, "${state.error}");
      //     }
      //   },
      //   builder: (context, state) {
      //     if (state is AddressManagementStateLoading)
      //       return const Padding(
      //           padding: EdgeInsets.only(top: 25.0),
      //           child: Center(
      //             child: CircularProgressIndicator(),
      //           ));
      //     else if (state is AddressManagementStateSuccess)
      //       return Flexible(
      //           child: ListView.builder(
      //               itemCount: state.response?.data?.length,
      //               itemBuilder: (context, index) {
      //                 return Column(
      //                   children: [
      //                     AddressWidget(
      //                         context, state.response?.data![index], () {},
      //                         (id) {
      //                       cubit.deleteAddress(id);
      //                     })
      //                   ],
      //                 );
      //               }));
      //     else
      //       return Container(
      //         color: Colors.white,
      //       );
      //   },
      // )
    ])));
  }
}
