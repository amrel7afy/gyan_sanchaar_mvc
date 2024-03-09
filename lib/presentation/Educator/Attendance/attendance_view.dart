import 'package:flutter/material.dart';
import '../../../core/my_utils/constants/widgets/custom_app_bar.dart';

import 'attendance_view_widgets/attendance_view_body.dart';



class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(context, title: 'Attendance'),
      body: const SafeArea(child: AttendanceViewBody()),
    );
  }
}
