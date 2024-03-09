
import 'package:flutter/material.dart';



import '../../../educator/Schedule/widgets/schedule_card.dart';

import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';


class TimeLineSection extends StatelessWidget {
  const TimeLineSection({
    super.key,
    required this.padding,
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Container(
        margin: padding,
        padding: const EdgeInsets.only(left: 16, right: 16, top: 23),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: MyColors.kCardColor),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Time',
                  style: MyTextStyles.mediumTextStyle14
                      .copyWith(color: MyColors.kExtraGreyColor),
                ),
                const HorizontalSpacer(2.8),
                Text('Course',
                    style: MyTextStyles.mediumTextStyle14
                        .copyWith(color: MyColors.kExtraGreyColor))
              ],
            ),
            const VerticalSpacer(1.9),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CourseTimeLineCard(
                        backGroundColor:
                            index == 0 ? MyColors.kPrimaryColor : Colors.white,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
