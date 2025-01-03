import 'package:api_train/utils/helpers/network_manager.dart';
import 'package:get/get.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkService>(() => NetworkService());
  }
}
