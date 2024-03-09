
import 'package:flutter/material.dart';

import '../my_colors.dart';
import '../my_text_styles.dart';


AppBar buildAppBar(BuildContext context,{required String title}) {
  return AppBar(
    titleSpacing: 00.0,
    leadingWidth: 50,
    leading: IconButton(
      icon: const Icon(
        Icons.close,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    title: Text(
      title,
      style: MyTextStyles.boldTextStyle20
          .copyWith(color: MyColors.kPrimaryColor),
    ),
  );
}