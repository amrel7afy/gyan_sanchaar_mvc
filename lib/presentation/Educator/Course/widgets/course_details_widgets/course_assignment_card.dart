import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/methods.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_text_styles.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../../core/my_utils/constants/constants.dart';


class CourseAssignmentCard extends StatelessWidget {
  const CourseAssignmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     
      color: MyColors.kCardColor,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Details',
            style: MyTextStyles.mediumTextStyle12
                .copyWith(color: MyColors.kPrimaryColor, fontFamily: raleWay),
          ),
          const VerticalSpacer(1),
          SizedBox(
            width: getWidth(context) * 0.9,
            child: Text(
              'Question on Photoelectric effect, Test your '
              'understanding with practice problems and answer them carefully.',
              maxLines: 3,
              style: MyTextStyles.mediumTextStyle12.copyWith(
                fontFamily: raleWay,
              ),
            ),
          ),
          const VerticalSpacer(0.9),
          Text(
            'Submission-',
            style: MyTextStyles.mediumTextStyle12
                .copyWith(color: MyColors.kPrimaryColor, fontFamily: raleWay),
          ),
          const VerticalSpacer(0.5),
          SizedBox(
            width: getWidth(context) * 0.8,
            child: Text(
              'Assignment due on the 21st of April at 11:59 pm.',
              maxLines: 1,
              style: MyTextStyles.mediumTextStyle12.copyWith(
                fontFamily: raleWay,
              ),
            ),
          ),
          const VerticalSpacer(0.8),
          Row(
            children: [
              Text(
                'Assignment',
                style: MyTextStyles.mediumTextStyle14.copyWith(
                    color: MyColors.kPrimaryColor,
                    fontFamily: raleWay,
                    decoration: TextDecoration.underline,
                    decorationColor: MyColors.kPrimaryColor),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
