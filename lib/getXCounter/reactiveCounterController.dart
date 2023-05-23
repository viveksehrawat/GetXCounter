import 'package:get/get.dart';

class ReactiveCounterController extends GetxController {
  RxInt value = 0.obs;

  add() {
    value++;
  }

  subtract() {
    value--;
  }
}
