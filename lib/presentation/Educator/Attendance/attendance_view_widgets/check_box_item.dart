import 'package:flutter/material.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_text_styles.dart';

import '../../../../core/app_export.dart';


Widget buildCheckBoxItem({
  required String letter,
  required Color activeColor,
  required bool status,
  required void Function(bool?)?onChanged
}) {
  return Row(
    children: [
      Text(
        letter,
        style: MyTextStyles.mediumTextStyle20
            .copyWith(color: status ? activeColor : MyColors.kGreyColor),
      ),
      const SizedBox(width: 4),
      SizedBox(
        width: 25.w,
        height: 39.h,
        child: Checkbox(
          value: status,
          hoverColor: MyColors.kGreyColor,
          checkColor: Colors.white,
          side: const BorderSide(color: MyColors.kGreyColor, width: 2.0),
          activeColor: activeColor,
          onChanged: onChanged,
        ),
      ),
    ],
  );
}
