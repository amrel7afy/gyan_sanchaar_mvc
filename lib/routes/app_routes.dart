import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import '../presentation/educator/Bottom Nav Bar/bottom_nav_bar_view..dart';
import '../presentation/educator/Course/widgets/course_details_view.dart';
import '../presentation/educator/Schedule/schedule_view.dart';
import '../presentation/educator/Syllabus/syllabus_view.dart';
import '../presentation/educator/Assignments/assignments_view.dart';
import '../presentation/educator/Attendance/attendance_view.dart';
import '../presentation/educator/Course/course_view.dart';
import '../presentation/educator/Extra/extra_view.dart';
import '../presentation/educator/Home/home_view.dart';
import '../presentation/educator/Tests/tests_view.dart';



class AppRoutes {
  final partnerData = GetStorage();
  static const String bottomNavBarView = '/';
  static const String homeView = '/homeView';
  static const String scheduleView = '/scheduleView';
  static const String assignmentsView = '/assignmentsView';
  static const String attendanceView = '/attendanceView';
  static const String extraView = '/extraView';
  static const String syllabusView = '/syllabusView';
  static const String testsView = '/testsView';
  static const String courseView = '/courseView';
  static const String courseDetailsView = '/courseDetailsView';

  static List<GetPage> pages = [
    GetPage(
      name: bottomNavBarView,
      page: () => const BottomNavBarView(),
      bindings: const [],
    ),
    GetPage(
      name: homeView,
      page: () => const HomeView(),
      bindings: const [],
    ),
    GetPage(
      name: scheduleView,
      page: () => const ScheduleView(),
      bindings: const [],
    ),
    GetPage(
      name: assignmentsView,
      page: () => const AssignmentsView(),
      bindings: const [],
    ),
    GetPage(
      name: attendanceView,
      page: () => const AttendanceView(),
      bindings: const [],
    ),
    GetPage(
      name: extraView,
      page: () => const ExtraView(),
      bindings: const [],
    ),
    GetPage(
      name: syllabusView,
      page: () => const SyllabusView(),
      bindings: const [],
    ),
    GetPage(
      name: testsView,
      page: () => const TestsView(),
      bindings: const [],
    ),
    GetPage(
      name: courseView,
      page: () => const CourseView(),
      bindings: const [],
    ),
    GetPage(
      name: courseDetailsView,
      page: () => const CourseDetailsView(),
      bindings: const [],
    ),
  ];
}

