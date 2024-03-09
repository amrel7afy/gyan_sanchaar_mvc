import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_text_styles.dart';

class SeeMoreButton extends StatelessWidget {
  final  VoidCallback onTap;
  const SeeMoreButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'see more',
        style: MyTextStyles.mediumTextStyle14.copyWith(
          decoration: TextDecoration.underline,
          color: MyColors.kSeeMoreTextColor,
        ),
      ),
    );
  }
}