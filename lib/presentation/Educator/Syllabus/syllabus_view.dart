import 'package:flutter/material.dart';




import '../../../../core/my_utils/constants/my_colors.dart';
import '../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../core/app_export.dart';
import 'view/syllabus_view_widgets/syllabus_view_body.dart';


class SyllabusView extends StatelessWidget {
  const SyllabusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 00.0,
        leadingWidth: 80.w,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.kPrimaryColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title:  Text(
          'Syllabus',
          style: MyTextStyles.boldTextStyle18,
        ),
        centerTitle: true,
      ),
      body: const SafeArea(child: SyllabusViewBody()),
    );
  }
}
