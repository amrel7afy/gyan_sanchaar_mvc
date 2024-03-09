import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

import 'package:gyan_sanchaar_mvc_app/core/my_utils/paints/schedule_paint_line.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/paints/schedule_painter.dart';


import 'package:flutter/material.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/methods.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';

class SchedulePainter extends StatelessWidget {
  const SchedulePainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(getWidth(context), getHeight(context)),
          painter: ScheduleCurvePainter(MyColors.kPrimaryColor),
        ),
        CustomPaint(
          size: Size(getWidth(context), getHeight(context)),
          painter: ScheduleLinePainter(lineColor: Colors.white),
        ),
      ],
    );
  }
}