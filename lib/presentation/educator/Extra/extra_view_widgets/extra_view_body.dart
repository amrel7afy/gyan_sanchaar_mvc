import 'package:flutter/material.dart';


import '../../../../../../core/my_utils/constants/constants.dart';


class ExtraViewBody extends StatelessWidget {
  const ExtraViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: kLeftHomeViewPadding, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
          ),
        ),
      ],
    );
  }
}
