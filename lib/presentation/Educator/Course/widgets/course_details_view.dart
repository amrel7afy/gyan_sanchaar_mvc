



import 'package:flutter/material.dart';

import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_text_styles.dart';

import '../../../../core/app_export.dart';
import 'course_details_widgets/course_details_view_body.dart';


class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 00.0,
        leadingWidth: 80.w,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Courses',
          style: MyTextStyles.boldTextStyle20
              .copyWith(color: MyColors.kPrimaryColor),
        ),
      ),
      body: const SafeArea(child: CourseDetailsViewBody()),
    );
  }
}
