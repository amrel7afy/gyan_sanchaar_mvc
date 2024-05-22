import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import 'attendance_table.dart';
import 'bottom_actions.dart';
import 'chip_list.dart';



class AttendanceViewBody extends StatelessWidget {
  const AttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(height: 18.h),
        ChipList(),
         SizedBox(height: 20.h),
        const Expanded(child: SingleChildScrollView(child: AttendanceTable())),
         SizedBox(height: 5.h),
        const BottomActions(),
         SizedBox(height: 10.h),
      ],
    );
  }
}
