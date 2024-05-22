import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';

import '../../../../../../core/my_utils/constants/constants.dart';
import '../../../../core/app_export.dart';
import '../controller/GetX/attendance_controller.dart';


class ChipList extends StatelessWidget {
  ChipList({super.key});

  final AttendanceController attController = Get.put(AttendanceController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
          itemCount: attController.selections.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if(index==0){
              return  Padding(padding: const EdgeInsets.only(left: kLeftAttendanceViewPadding),
              child: Obx(() {
                return CustomChip
                  (isSelected: attController.selections[index],
                  label: 'Class ${index + 1}',
                  onTap: () {
                    attController.changeClassSelection(
                        index);
                  },
                );
              }),
              );
            }else{  return Obx(() {
              return CustomChip
                (isSelected: attController.selections[index],
                label: 'Class ${index + 1}',
                onTap: () {
                  attController.changeClassSelection(
                      index);
                },
              );
            });}

          })

      ,
    );
  }
}

class CustomChip extends StatelessWidget {
  final bool isSelected;
  final String label;
  final void Function()? onTap;

  const CustomChip({
    super.key,
    required this.isSelected, this.onTap, required this.label
  });

  List<Color> getColors(bool isSelected) {
    if (isSelected) {
      return <Color>[MyColors.kPrimaryColor, MyColors.kPrimaryColor];
    } else {
      return <Color>[Colors.black, MyColors.kGreyColor];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
        // Adjust the border radius as needed
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
          // Adjust the padding as needed
          decoration: BoxDecoration(
            border: Border.all(color: getColors(isSelected)[1]),
            // Adjust the border color as needed
            borderRadius: BorderRadius.circular(
                8.0), // Match the border radius above
          ),
          child: Text(
            label,
            style: MyTextStyles.boldTextStyle14.copyWith(
                color: getColors(isSelected)[0]),
          ),
        ),
      ),
    );
  }
}