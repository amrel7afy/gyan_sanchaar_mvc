import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/my_utils/paints/subject_custom_paint.dart';
import '../../../../../core/my_utils/paints/subject_paint_line.dart';


import '../../../../../core/my_utils/constants/methods.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';

import '../../../../../../core/my_utils/constants/constants.dart';
import '../../../../core/app_export.dart';
import '../model/subject_card_model.dart';



class SubjectCard extends StatelessWidget {
  final SubjectCardModel subjectCardModel;
  const SubjectCard({
    super.key, required this.subjectCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 149.w,
        decoration: BoxDecoration(
          color: subjectCardModel.backGroundColor,
          borderRadius: BorderRadius.circular(cardBorderRadius),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 17.5,
              left: 10,
              child: Image.asset(
                subjectCardModel.img,
                width: 60.w,
                height: 50.h,
              ),
            ),
            Positioned(
              bottom: 16,
              child: Text(subjectCardModel.title,style: MyTextStyles.semiBoldTextStyle16,),
            ),
            CustomPaint(
              size: Size(getWidth(context), getHeight(context)),
              painter: SubjectCurvePainter(subjectCardModel.curveColor ),
            ),
            CustomPaint(
              size: Size(getWidth(context), getHeight(context)),
              painter: SubjectLinePainter(lineColor:subjectCardModel.curvedLineColor ),
            ),
          ],
        ),
      ),
    );
  }
}