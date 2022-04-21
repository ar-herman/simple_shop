import 'package:get/get.dart';
import 'package:simple_shopping_getx/home/home_controller.dart';

class Homebinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Homecontroller());
  }
}
