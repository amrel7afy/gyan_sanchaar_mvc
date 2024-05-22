import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/my_utils/constants/methods.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/custom_button.dart';
import '../../../../../core/my_utils/constants/widgets/search_field.dart';
import '../../../../../core/my_utils/constants/widgets/show_dialog_method.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';

import '../../../../../../core/my_utils/constants/constants.dart';
import '../../../../core/app_export.dart';
import 'build_drop_down_menu.dart';

class AssignmentsViewBody extends StatefulWidget {
  const AssignmentsViewBody({super.key});

  @override
  State<AssignmentsViewBody> createState() => _AssignmentsViewBodyState();
}

class _AssignmentsViewBodyState extends State<AssignmentsViewBody> {
  TextEditingController titleController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController repeatController = TextEditingController();
  TextEditingController urlController = TextEditingController();
  TextEditingController notesController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
                left: kLeftAssignmentsViewPadding,
                right: kRightAssignmentsViewPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close)),
                const VerticalSpacer(1),
                Text(
                  'Assignments',
                  style: MyTextStyles.boldTextStyle20
                      .copyWith(color: MyColors.kPrimaryColor),
                ),
                const VerticalSpacer(2),
                _buildFirstTwoFields(),
                const VerticalSpacer(4),
                _buildSecondThreeFields(),
                const VerticalSpacer(4),
                _buildLastTwoFields(),
                const VerticalSpacer(2),
                SizedBox(
                  height: 55.h,
                  width: getWidth(context),
                  child: CustomButton(
                    borderRadius: BorderRadius.circular(10),
                    textStyle: MyTextStyles.boldTextStyle20
                        .copyWith(color: Colors.white),
                    text: 'Create',
                    backGroundColor: MyColors.kPrimaryColor,
                    onPressed: () {
                      buildShowDialog(context,
                          title: 'Created Successfully',
                          subTitle:
                              'Your Assignment has been Created successfully ');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildFirstTwoFields() {
    return Column(
      children: [
        DefaultFormField(
          controller: titleController,
          prefixTitle: 'Title',
        ),
        DefaultFormField(
          controller: placeController,
          prefixTitle: 'Place',
        )
      ],
    );
  }

  _buildSecondThreeFields() {
    return Column(
      children: [
        DefaultFormField(
          controller: dateController,
          prefixTitle: 'Date',
          readOnly: true,
          suffixWidget: const Icon(
            FontAwesomeIcons.solidCalendar,
            color: MyColors.kPrimaryColor,
          ),
          suffixPressed: () async {
            _selectDate(context);
          },
        ),
        DefaultFormField(
            controller: timeController,
            prefixTitle: 'Time',
            readOnly: true,
            suffixWidget: CustomDropDownMenu(
                items: timeItems, dropDownItemValue: dropDownItemValue)),
        DefaultFormField(
            controller: repeatController,
            prefixTitle: 'Repeat',
            readOnly: true,
            suffixWidget: CustomDropDownMenu(
                items: repeatItems, dropDownItemValue: dropDownItemValue2)),
      ],
    );
  }

  _buildLastTwoFields() {
    return Column(
      children: [
        DefaultFormField(
          controller: urlController,
          prefixTitle: 'URL',
        ),
        NotesFormField(
          hint: 'Write notes',
          controller: notesController,
          prefixTitle: 'Notes',
          maxLines: 4,
        ),
      ],
    );
  }
  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: const ColorScheme.light(
                primary: MyColors.kPrimaryColor,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  //foregroundColor: Colors.red,
                ),
              ),
            ),
            child: child!);
      },
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        // Format the date as 'yyyy-MM-dd'
        String formattedDate =
            "${picked.year}/${picked.month.toString()}/${picked.day.toString()}";
        dateController.text = formattedDate;
      });
    }
  }
}
