import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../../core/my_utils/constants/constants.dart';
import 'course_assignment_card.dart';
import 'course_details_card.dart';
import 'group_work_card.dart';


class CourseDetailsViewBody extends StatelessWidget {
  const CourseDetailsViewBody({super.key});

  getBackGroundColor(index) {
    if (index == 0 || index % 2 == 0) {
      return MyColors.kPrimaryColor;
    } else {
      return MyColors.kCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kLeftCourseViewPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CourseDetailsCard(
                  backGroundColor: MyColors.kPrimaryColor,
                ),
                const VerticalSpacer(2),
                Text('Assignments',style: MyTextStyles.semiBoldTextStyle20,),
                const VerticalSpacer(2),
                const CourseAssignmentCard(),
                const VerticalSpacer(2),
                Text('Group work',style: MyTextStyles.semiBoldTextStyle20,),
                const VerticalSpacer(2),
                const GroupWorkCard()
              ],
            ),
          ),
        )
      ],
    );
  }
}
