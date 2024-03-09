import 'package:flutter/cupertino.dart';




import 'package:flutter/material.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../../core/my_utils/constants/constants.dart';

import '../../../Home/home_view_widgets/see_more_text.dart';
import 'remaining_lectures_card.dart';


class RemainingLecturesSection extends StatelessWidget {
  const RemainingLecturesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             Text(
              'Remaining Lectures ',
              style: MyTextStyles.semiBoldTextStyle20.copyWith(
                fontFamily:raleWay
              ),
            ),
            const Spacer(),
            SeeMoreButton(onTap: (){

            },),
          ],
        ),
        const VerticalSpacer(2.4),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              RemainingLecturesCard(
                backGroundColor: MyColors.kPrimaryColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.white,
                onTap: () {
                //  Get.toNamed(AppRoutes.syllabusView);
                },
              ),
              const HorizontalSpacer(1),
              RemainingLecturesCard(
                backGroundColor: MyColors.kCardColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.black,
                onTap: () {
                 // Get.toNamed(AppRoutes.scheduleView);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              RemainingLecturesCard(
                backGroundColor: MyColors.kCardColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.black,
                onTap: () {
                //  navigateTo(context, AppRouter.assignmentsView);
                },
              ),
              const HorizontalSpacer(1),
              RemainingLecturesCard(
                backGroundColor: MyColors.kPrimaryColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.white,
                onTap: () {
                 // navigateTo(context, AppRouter.testsView);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            children: [
              RemainingLecturesCard(
                backGroundColor: MyColors.kPrimaryColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.white,
                onTap: () {
                 // navigateTo(context, AppRouter.attendanceView);
                },
              ),
              const HorizontalSpacer(1),
              RemainingLecturesCard(
                backGroundColor: MyColors.kCardColor,
                course: 'Physics 211',
                instructorName: 'Courtney Henry',
                textColor: Colors.black,
                onTap: () {
             //     navigateTo(context, AppRouter.extraView);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}