import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/my_utils/constants/methods.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';

class SyllabusCard extends StatelessWidget {
  const SyllabusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: getWidth(context) * 0.7,
            child:  Column(
              children: [
                 Text(
                  'Lesson 1. Getting to know the WebFlow interface',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: MyTextStyles.boldTextStyle18,
                ),
                Text(
                  'We study the interface and familiarize ourselves with the basic functions',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: MyTextStyles.mediumTextStyle14.copyWith(color: MyColors.kExtraGreyColor.withOpacity(0.8)),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Icon(FontAwesomeIcons.circleCheck,color: MyColors.kPrimaryColor,),

        ],
      ),
    );
  }
}