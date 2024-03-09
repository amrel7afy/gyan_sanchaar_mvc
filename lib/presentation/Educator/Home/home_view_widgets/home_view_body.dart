import 'package:flutter/material.dart';

import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../../core/my_utils/constants/constants.dart';

import 'actions_section.dart';
import 'home_view_app_bar.dart';
import 'quick_links_section.dart';
import 'schedule_section.dart';
import 'subjects_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: kLeftHomeViewPadding, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeViewAppBar(),
                VerticalSpacer(2),
                SubjectsSection(),
                VerticalSpacer(2.5),
                ScheduleSection(),
                VerticalSpacer(4),
                QuickLinksSection(),
                VerticalSpacer(2),
                ActionsSection(),
                VerticalSpacer(2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
