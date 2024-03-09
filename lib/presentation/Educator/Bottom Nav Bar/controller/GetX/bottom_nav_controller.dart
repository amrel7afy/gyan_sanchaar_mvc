
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../core/my_utils/constants/my_assets.dart';







import 'package:flutter/material.dart';
import '../../../../../../core/my_utils/constants/my_colors.dart';
import '../../../Blog/blog_view.dart';
import '../../../Course/course_view.dart';
import '../../../Home/home_view.dart';
import '../../../Profile/profile_view.dart';





class BottomNavBarController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }

  Color getIconColor(int index) {
    return tabIndex.value == index
        ? MyColors.kPrimaryColor
        : MyColors.kExtraGreyColor;
  }

  final List<Widget> views = [
    const HomeView(),
    const CourseView(),
    const BlogView(),
    const ProfileView()
  ];

  List<BottomNavigationBarItem> get navBarItems => [
        BottomNavigationBarItem(
          icon: Builder(
            builder: (context) => SvgPicture.asset(
              MyAssets.homeFilled,
              color: getIconColor(0),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Builder(
            builder: (context) => SvgPicture.asset(
              MyAssets.video,
              color: getIconColor(1),
            ),
          ),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: Builder(
            builder: (context) => SvgPicture.asset(
              MyAssets.bookOpened,
              color: getIconColor(2),
            ),
          ),
          label: 'Blogs',
        ),
        BottomNavigationBarItem(
          icon: Builder(
            builder: (context) => SvgPicture.asset(
              MyAssets.profile,
              color: getIconColor(3),
            ),
          ),
          label: 'Profile',
        ),
      ];
}
