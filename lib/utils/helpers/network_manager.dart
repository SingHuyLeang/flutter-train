import 'dart:async';
import 'dart:developer';

import 'package:api_train/utils/popups/toast_message.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> connectivitySubscription;
  final Rx<ConnectivityResult> connectivityStatus = ConnectivityResult.none.obs;

  // Initialize the network manager and set up a stream to continually check the connect status.
  @override
  void onInit() {
    super.onInit();
    connectivitySubscription = connectivity.onConnectivityChanged.listen(updateConnectionStatus);
  }

  // Update the connection status base on changes in connectivity and show a relevant popup for no internet connection.
  Future<void> updateConnectionStatus(ConnectivityResult result) async {
    connectivityStatus.value = result;
    if (connectivityStatus.value == ConnectivityResult.none) {
      ToastMessage.info(title: 'No Internet Connection');
    }
  }

  // Check internet status
  Future<bool> isConnected() async {
    try {
      final result = await connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    }
  }

  // Dispose the active activity stream
  @override
  void onClose() {
    super.onClose();
    connectivitySubscription.cancel();
  }
}
