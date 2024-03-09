import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/my_utils/constants/my_colors.dart';
import 'controller/GetX/bottom_nav_controller.dart';



class BottomNavBarView extends StatelessWidget {
  final TextStyle unselectedLabelStyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  const BottomNavBarView({super.key});


  @override
  Widget build(BuildContext context) {
    BottomNavBarController bottomNavController = Get.put(
        BottomNavBarController());
    return GetBuilder<BottomNavBarController>(builder: (logic) {
      return Scaffold(
        bottomNavigationBar: buildBottomNavigationMenu(
            context, bottomNavController),
        body: IndexedStack(
            index: bottomNavController.tabIndex.value,
            children: bottomNavController.views
        ),
      );
    });
  }

  buildBottomNavigationMenu(context,
      BottomNavBarController bottomNavBarController) {
    return
      Obx(() {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: MyColors.kPrimaryColor,
          unselectedItemColor: Colors.black,
          onTap: bottomNavBarController.changeTabIndex,
          currentIndex: bottomNavBarController.tabIndex.value,
          items: bottomNavBarController.navBarItems,
        );
      });
  }
}