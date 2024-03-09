import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';

import '../controller/GetX/attendance_controller.dart';
import '../models/student_model.dart';
import 'check_box_item.dart';


class TableCheckBoxes extends StatelessWidget {
   final StudentModel student;

  const TableCheckBoxes({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        margin: student.isLastStudent
            ? const EdgeInsets.only(top: 5)
            : const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(width: 0.7, color: MyColors.kGreyColor),
        ),
        child: Row(
          children: [
            const Spacer(),
            buildCheckBoxItem(
              letter: 'P',
              activeColor: MyColors.kGreenColor,
              status: student.attendanceStatus == AttendanceStatus.present,
              onChanged: (bool? val) {
                if (student.attendanceStatus != AttendanceStatus.present) {
                  Get.find<AttendanceController>()
                      .changeAttendanceStatusToPresent(student);
                }
              },
            ),
            const SizedBox(width: 10),
            buildCheckBoxItem(
              letter: 'L',
              activeColor: MyColors.kPrimaryColor,
              status: student.attendanceStatus == AttendanceStatus.late,
              onChanged: (bool? val) {
                if (student.attendanceStatus != AttendanceStatus.late) {
                  Get.find<AttendanceController>()
                      .changeAttendanceStatusToLate(student);
                }
              },
            ),
            const SizedBox(width: 10),
            buildCheckBoxItem(
              letter: 'A',
              activeColor: MyColors.kExtraRedColor,
              status: student.attendanceStatus == AttendanceStatus.absent,
              onChanged: (bool? val) {
                if (student.attendanceStatus != AttendanceStatus.absent) {
                  Get.find<AttendanceController>()
                      .changeAttendanceStatusToAbsent(student);
                }
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
