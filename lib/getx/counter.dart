import 'package:get/get.dart';

class CounteGetx extends GetxController {
  RxInt counter = 0.obs;

  void incrementCounter() {
    counter.value++;
    update();
  }

  void decrementCounter() {
    counter.value--;
    update();
  }
}
