import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';




import '../../../../core/app_export.dart';
import '../../../../core/my_utils/constants/my_colors.dart';
import '../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';


import '../controller/GetX/schedule_controller.dart';


class ScheduleViewAppBar extends StatelessWidget {

  final ScheduleController scheduleController = Get.put(ScheduleController());

  ScheduleViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScheduleController>(builder: (logic) {
      return Row(
        children: [
          Text(
            scheduleController.day.toString(),
            style: MyTextStyles.semiBoldTextStyle44,
          ),
          const HorizontalSpacer(.8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                scheduleController.dayName.toString(),
                style: MyTextStyles.mediumTextStyle14
                    .copyWith(color: MyColors.kGreyColor),
              ),
              Text(
                scheduleController.monthAndYear.toString(),
                style: MyTextStyles.mediumTextStyle14
                    .copyWith(color: MyColors.kGreyColor),
              ),
            ],
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            height: 40.h,
            width: 83.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: MyColors.kPrimaryColor.withOpacity(0.15)),
            child: Text(
              'Today',
              style: MyTextStyles.boldTextStyle16
                  .copyWith(color: MyColors.kPrimaryColor),
            ),
          )
        ],
      );
    });
  }
}