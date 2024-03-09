import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import '../../../../../../core/my_utils/constants/constants.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'custom_data_picker.dart';
import 'schedule_view_app_bar.dart';
import 'time_line_section.dart';
class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  final EdgeInsets padding =
      const EdgeInsets.only(left: kLeftHomeViewPadding, top: 5, right: 20);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: padding,
            child:   Column(
              children: [
                ScheduleViewAppBar(),
                const  VerticalSpacer(1),
                const    CustomDatePicker(),
                const VerticalSpacer(1),
              ],
            ),
          ),
        ),

        TimeLineSection(padding: padding)
      ],
    );
  }
}
