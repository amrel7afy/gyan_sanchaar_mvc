
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';
import '../../../../../core/my_utils/constants/methods.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/custom_button.dart';
import '../../../../../core/my_utils/constants/widgets/show_dialog_method.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';


import '../../../../../../core/my_utils/constants/constants.dart';
import 'syllabus_card.dart';

class SyllabusViewBody extends StatelessWidget {
  const SyllabusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kLeftSyllabusViewPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const SyllabusCard();
              },
            ),
          ),
          const VerticalSpacer(1.0),
          buildButton(context),
          const VerticalSpacer(2.0)
        ],
      ),
    );
  }

  SizedBox buildButton(BuildContext context) {
    return SizedBox(
      height: 55.h,
      width: getWidth(context),
      child: CustomButton(
        borderRadius: BorderRadius.circular(10),
        textStyle: MyTextStyles.boldTextStyle18.copyWith(color: Colors.white),
        text: 'Add to Syllabus',
        backGroundColor: MyColors.kPrimaryColor,
        onPressed: () {
          buildShowDialog(context,
              title: 'Added Successfully',
              subTitle: 'Your Syllabus has been Created successfully');
        },
      ),
    );
  }
}
