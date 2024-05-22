
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/my_utils/constants/my_assets.dart';
import '../../../../core/my_utils/constants/my_colors.dart';
import '../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../core/app_export.dart';


class CourseTimeLineCard extends StatelessWidget {
  final Color backGroundColor;
  const CourseTimeLineCard({super.key, required this.backGroundColor});
  final String img =
      'https://th.bing.com/th/id/OIP.HkIbhO8npHy_0T2VN9fTewHaMg?w=192&h=324&c=7&r=0&o=5&dpr=1.3&pid=1.7';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '13:05',
                style: MyTextStyles.semiBoldTextStyle16
                    .copyWith(color: Colors.black),
              ),
              Text(
                '13:05',
                style: MyTextStyles.mediumTextStyle14
                    .copyWith(color: MyColors.kExtraGreyColor),
              ),
            ],
          ),
           SizedBox(
              height: 143.h,
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: VerticalDivider(
                  width: 0.5.w,
                  thickness: 1,
                  color: MyColors.kExtraGreyColor,
                ),
              )),
          buildCourse(backGroundColor),
        ],
      ),
    );
  }






  Expanded buildCourse(Color backGroundColor) {
    Color textColor=backGroundColor == MyColors.kPrimaryColor?Colors.white:Colors.black;
    Color iconColor=backGroundColor == MyColors.kPrimaryColor?Colors.white:Colors.black;
    return Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            height: 200.h,
            decoration: BoxDecoration(
                color: backGroundColor,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Mathematics',
                      style: MyTextStyles.semiBoldTextStyle16
                          .copyWith(color: textColor),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      MyAssets.twoVerticalDots,
                      width: 24.w,
                      height: 24.h,
                      color: iconColor,
                    )
                  ],
                ),
                Text(
                  'Chapter 1: Introduction',
                  style: MyTextStyles.mediumTextStyle12
                      .copyWith(color: textColor),
                ),
                const Spacer(),
                Row(
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(MyAssets.location,color: iconColor,),
                        const VerticalSpacer(1.2),
                        CircleAvatar(
                          radius: 8,
                          backgroundImage: NetworkImage(img),
                        )
                      ],
                    ),
                    const HorizontalSpacer(2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Online Mode',
                          style: MyTextStyles.mediumTextStyle12.copyWith(
                              color: textColor, fontWeight: FontWeight.w400),
                        ), const VerticalSpacer(0.2),
                        Text(
                          'Brooklyn Williamson',
                          style: MyTextStyles.mediumTextStyle12.copyWith(
                              color: textColor, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
                const VerticalSpacer(0.71),

              ],
            ),
          ),
        );
  }
}
