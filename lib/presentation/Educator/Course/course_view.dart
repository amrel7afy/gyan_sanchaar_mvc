import 'package:flutter/material.dart';
import '../../../core/my_utils/constants/constants.dart';
import '../../../core/my_utils/constants/my_colors.dart';
import '../../../core/my_utils/constants/my_text_styles.dart';


import 'widgets/course_widgets/course_view_body.dart';


class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: kLeftCourseViewPadding,
        leadingWidth: 80,
        title: Text(
          'Courses',
          style: MyTextStyles.boldTextStyle20
              .copyWith(color: MyColors.kPrimaryColor),
        ),
      ),
      body: const SafeArea(child: CourseViewBody()),
    );
  }

}


