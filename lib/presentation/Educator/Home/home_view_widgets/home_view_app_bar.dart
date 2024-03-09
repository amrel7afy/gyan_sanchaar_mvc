import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';




import 'package:flutter/material.dart';
import 'profile_avatar.dart';

import '../../../../../core/my_utils/constants/methods.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../../core/my_utils/constants/constants.dart';



class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kRightHomeViewPadding),
      child: Row(
        children: [
          const ProfileAvatar(),
          const HorizontalSpacer(1.2),
          buildTitleAndSubTitle(context),
          const Expanded(child: SizedBox(width: 5,)),
          Container(
            width: 41,
            height: 36,
            padding: const EdgeInsets.all(4),
            decoration:  BoxDecoration(
              color: MyColors.kAlertButtonColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset('assets/images/bell.svg',),
          )
        ],
      ),
    );
  }

  Column buildTitleAndSubTitle(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: getWidth(context) * 0.4,
              child: const Text(
                'Lina Kovalenko',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: MyTextStyles.boldTextStyle18,
              ),
            ),
            Text(
              'English teacher',
              style: MyTextStyles.mediumTextStyle14
                  .copyWith(color: MyColors.kGreyColor),
            )
          ],
        );
  }
}
