import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../core/app_export.dart';
import '../controller/GetX/schedule_controller.dart';



class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScheduleController>(
      builder: (logic) {
        return SizedBox(
          height: 60.h,
          child: DatePicker(
            initialSelectedDate: DateTime.now(),
            width: 48.w,
            DateTime.now(),
            onDateChange: (date) {
              logic.changeDate(date);

            },
            dayTextStyle: MyTextStyles.semiBoldTextStyle12
                .copyWith(color: MyColors.kGreyColor),
            selectionColor: MyColors.kRedColor,
            dateTextStyle: MyTextStyles.boldTextStyle16,
            daysCount: 7,
          ),
        );
      },
    );
  }
}