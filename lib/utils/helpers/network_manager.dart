import 'dart:async';
import 'dart:ffi';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> connectivitySubscription;
  final Rx<ConnectivityResult> connectivityStatus = ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();
    connectivitySubscription =
        connectivity.onConnectivityChanged.listen(updateConnectionStatus);
  }

  Future<void> updateConnectionStatus(ConnectivityResult result) async {
    connectivityStatus.value = result;
    if (connectivityStatus.value == ConnectivityResult.none) {
      toastification.show(
        message: "No Internet Connection",
        type: ToastType.error,
        duration: Duration(seconds: 3),
        gravity: ToastGravity.bottom,
        backgroundColor: Colors.red,
        showCloseButton: true,
        onTap: () {},
        onTapDismiss: () {},
        onLongPress: () {},
        onTapOutside: () {},
      )
    }
  }
}
