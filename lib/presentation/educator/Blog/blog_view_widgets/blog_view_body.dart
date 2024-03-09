import 'package:flutter/material.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/constants.dart';



class BlogViewBody extends StatelessWidget {
  const BlogViewBody({super.key});

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
