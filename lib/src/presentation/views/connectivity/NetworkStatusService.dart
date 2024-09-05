import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';



enum NetworkStatus { Online, Offline }

class NetworkStatusService {
  //This creates the single instance by calling the `_internal` constructor specified below
  static final NetworkStatusService _singleton =
      new NetworkStatusService._internal();
  NetworkStatusService._internal();

  //This is what's used to retrieve the instance through the app
  static NetworkStatusService getInstance() => _singleton;

  //This tracks the current connection status
  bool hasConnection = false;

  //This is how we'll allow subscribing to connection changes
  StreamController connectionChangeController =
      new StreamController.broadcast();

  //flutter_connectivity
  final Connectivity _connectivity = Connectivity();

  //Hook into flutter_connectivity's Stream to listen for changes
  //And check the connection status out of the gate
  void initialize() {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    // checkConnection();
  }

  Stream get connectionChange => connectionChangeController.stream;

  //A clean up method to close our StreamController
  //   Because this is meant to exist through the entire application life cycle this isn't
  //   really an issue
  void dispose() {
    connectionChangeController.close();
  }

  //flutter_connectivity's listener
  void _connectionChange(ConnectivityResult result) {
    checkConnection(result);
  }

  //The test to actually see if there is a connection
  Future<bool> checkConnection(ConnectivityResult result) async {
    bool previousConnection = hasConnection;

    // print("NetworkStatusService Network status  ===>>> ${result}");
    //
    // if (result == ConnectivityResult.mobile ||  result == ConnectivityResult.wifi) {
    //   hasConnection = true;
    // }else
    //   hasConnection = false;

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    print("NetworkService Network status  ===>>> ${hasConnection}");

    //The connection status changed send out an update to all listeners
    if (previousConnection != hasConnection) {
      connectionChangeController.add(hasConnection);
    }

    return hasConnection;
  }
}
