import 'package:get/get.dart';

import '../controller/GetX/attendance_controller.dart';

class AttendanceControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AttendanceController(), fenix: true);
  }

}