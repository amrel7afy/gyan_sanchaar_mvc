import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_text_styles.dart';

class ScheduledSubjectTime extends StatelessWidget {
  const ScheduledSubjectTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 21,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: MyColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: const Text('11:25-1:00 pm',
          style: MyTextStyles.semiBoldTextStyle10),
    );
  }
}

