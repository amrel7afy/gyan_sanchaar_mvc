import 'package:flutter/material.dart';

import 'assignments_view_widgets/assignments_view_body.dart';


class AssignmentsView extends StatelessWidget {
  const AssignmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AssignmentsViewBody()),
    );
  }
}
