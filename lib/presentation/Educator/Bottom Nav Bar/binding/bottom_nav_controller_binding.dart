import 'package:get/get.dart';

class BottomNavBarControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarControllerBinding(),);
  }

}