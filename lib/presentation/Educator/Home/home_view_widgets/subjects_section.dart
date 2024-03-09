

import 'package:flutter/material.dart';


import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';
import '../model/subject_card_model.dart';
import 'subject_card.dart';




class SubjectsSection extends StatelessWidget {
  const SubjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Subjects',
          style: MyTextStyles.boldTextStyle24,
        ),
        Text(
          'Recommendations for you',
          style: MyTextStyles.boldTextStyle14
              .copyWith(color: MyColors.kGreyColor),
        ),
        const VerticalSpacer(1.6),
        SizedBox(
          height: 119,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: SubjectCardModel.cardsModels.length,
              itemBuilder: (context, index) {
                return  SubjectCard(subjectCardModel: SubjectCardModel.cardsModels[index],);
              }),
        )
      ],
    );
  }
}


