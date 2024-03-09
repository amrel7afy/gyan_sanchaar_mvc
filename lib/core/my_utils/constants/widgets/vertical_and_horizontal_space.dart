import 'package:flutter/material.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/methods.dart';

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer(this.verticalSpace, {super.key});

  final double verticalSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: getHeight(context)*verticalSpace/100);
  }
}

class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer(this.horizontalSpace, {super.key});

  final double horizontalSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: getWidth(context)*horizontalSpace/100);
  }
}
