import 'package:flutter/material.dart';

import 'test_view_widgets/tests_view_body.dart';



class TestsView extends StatelessWidget {
  const TestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: TestsViewBody()),
    );
  }
}
