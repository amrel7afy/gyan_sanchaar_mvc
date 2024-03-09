import 'package:flutter/material.dart';

import 'extra_view_widgets/extra_view_body.dart';




class ExtraView extends StatelessWidget {
  const ExtraView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ExtraViewBody()),
    );
  }
}
