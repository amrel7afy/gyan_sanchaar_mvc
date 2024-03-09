import 'package:get/get.dart';

import '../controller/GetX/schedule_controller.dart';

class ScheduleControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleController(), fenix: true);
  }

}