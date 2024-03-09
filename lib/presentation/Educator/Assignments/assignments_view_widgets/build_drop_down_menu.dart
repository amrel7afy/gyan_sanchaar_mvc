import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_colors.dart';
import 'package:gyan_sanchaar_mvc_app/core/my_utils/constants/my_text_styles.dart';

import '../../../../../../core/my_utils/constants/constants.dart';

String dropDownItemValue = 'One Time       ';
String dropDownItemValue2 = 'Repeat';
final List<String> timeItems = [
  'One Time       ',
  'Twice',
];

final List<String> repeatItems = [
  'Repeat',
  'Don\'t repeat  ',
];

DropdownMenuItem<String> buildDropDownItem(String item) {
  return DropdownMenuItem(
      value: item,
      child: Text(item,
          style: MyTextStyles.mediumTextStyle14
              .copyWith(color: MyColors.kExtraGreyColor,
          fontFamily: raleWay
          )));
}

class CustomDropDownMenu extends StatefulWidget {
  final String dropDownItemValue;
  final List<String> items;

  const CustomDropDownMenu(
      {super.key, required this.items, required this.dropDownItemValue});

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  late String dropDownItemValue;

  @override
  void initState() {
    super.initState();
    dropDownItemValue = widget.dropDownItemValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropDownItemValue,
        icon: const Icon(
          FontAwesomeIcons.chevronDown,
          color: Color(0xff0D173B),
        ),
        iconSize: 16,
        
        borderRadius: BorderRadius.circular(
          20,
        ),
        items: widget.items
            .map(
              buildDropDownItem,
            )
            .toList(),
        onChanged: (value) => setState(
          () => dropDownItemValue = value!,
        ),
      ),
    );
  }
}
