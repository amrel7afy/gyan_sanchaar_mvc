




import '../../../../../core/app_export.dart';





import '../../../../../core/my_utils/constants/my_colors.dart';
import '../../../../../core/my_utils/constants/my_text_styles.dart';
import '../../../../../core/my_utils/constants/widgets/vertical_and_horizontal_space.dart';
import '../../../../../routes/app_routes.dart';
import 'schedule_card.dart';
import 'see_more_text.dart';

class ScheduleSection extends StatelessWidget {
  const ScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Your Schedule',
          style: MyTextStyles.boldTextStyle24,
        ),
        const VerticalSpacer(0.6),
        Padding(
          padding: const EdgeInsets.only(right: 42.5),
          child: Row(
            children: [
              Text(
                'Next lessons',
                style: MyTextStyles.boldTextStyle14
                    .copyWith(color: MyColors.kGreyColor),
              ),
              const Spacer(),
              SeeMoreButton(onTap: (){
               //Get.to( AppRoutes.scheduleView);
              },),
            ],
          ),
        ),
        const VerticalSpacer(1.6),
        const ScheduleCard()
      ],
    );
  }
}
