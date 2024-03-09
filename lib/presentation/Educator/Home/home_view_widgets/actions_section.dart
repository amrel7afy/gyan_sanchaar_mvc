import 'package:flutter/material.dart';


import '../../../../../core/app_export.dart';

import '../../../../../core/my_utils/constants/my_assets.dart';




import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';


import '../../../../../../routes/app_routes.dart';
import 'actions_card.dart';



class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 35),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Syllabus',
                  icon: MyAssets.syllabus,
                  textColor: Colors.white,
                  onTap: () {
                    Get.toNamed(AppRoutes.syllabusView);
                  },
                ),
                const HorizontalSpacer(2.3),
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Schedule',
                  icon: MyAssets.schedule,
                  textColor: Colors.black,
                  onTap: () {
                    Get.toNamed(AppRoutes.scheduleView);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Assignments',
                  icon: MyAssets.assignments,
                  textColor: Colors.black,
                  onTap: () {
                    Get.toNamed(AppRoutes.assignmentsView);
                  },
                ),
                const HorizontalSpacer(2.3),
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Tests',
                  icon: MyAssets.tests,
                  textColor: Colors.white,
                  onTap: () {
                    Get.toNamed(AppRoutes.testsView);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                ActionCard(
                  backGroundColor: MyColors.kPrimaryColor,
                  title: 'Attendance',
                  icon: MyAssets.attendance,
                  textColor: Colors.white,
                  onTap: () {
                    Get.toNamed(AppRoutes.attendanceView);
                  },
                ),
                const HorizontalSpacer(2.3),
                ActionCard(
                  backGroundColor: MyColors.kCardColor,
                  title: 'Extra',
                  icon: MyAssets.extra,
                  textColor: Colors.black,
                  onTap: () {
                    Get.toNamed(AppRoutes.extraView);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
