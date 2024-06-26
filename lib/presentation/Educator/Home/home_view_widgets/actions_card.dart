import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_text_styles.dart';

import '../../../../core/app_export.dart';



class ActionCard extends StatelessWidget {
  final Color backGroundColor;
  final Color textColor;
  final String icon;
  final String title;
  final VoidCallback onTap;

  const ActionCard({
    super.key, required this.backGroundColor, required this.icon, required this.title, required this.textColor, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100.h,
          alignment: Alignment.center,
          color: backGroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(icon),
              Text(
                title,
                style: MyTextStyles.mediumTextStyle16.copyWith(
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}