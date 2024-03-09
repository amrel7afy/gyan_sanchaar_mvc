import 'package:flutter/material.dart';

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
        const SizedBox(height: 18),
        ChipList(),
        const SizedBox(height: 20),
        const Expanded(child: SingleChildScrollView(child: AttendanceTable())),
        const SizedBox(height: 5),
        const BottomActions(),
        const SizedBox(height: 10),
      ],
    );
  }
}
