
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';



import 'package:flutter/material.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';

import '../model/quick_link_model.dart';






class QuickLinksCard extends StatelessWidget {
  final QuickLinksCardModel quickLinksCardModel;

  const QuickLinksCard({
    super.key, required this.quickLinksCardModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        quickLinksCardModel.title,
        style: MyTextStyles.semiBoldTextStyle16.copyWith(
          color: MyColors.kSeeMoreTextColor,
        ),
      ),
      trailing: SvgPicture.asset(quickLinksCardModel.icon),
    );
  }
}