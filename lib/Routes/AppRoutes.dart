// lib/routes/app_routes.dart
import 'package:get/get.dart';
import 'package:portfolioproject/Splash/SplashScreen.dart';
import 'package:portfolioproject/Views/Home/Components/ContactComponent.dart';
import 'package:portfolioproject/Views/Home/HomeScreen.dart';

abstract class AppRoutes {
  static const splash = '/';
  static const home = '/home';
  static const about = '/about';
  static const portfolio = '/portfolio';
  static const contact = '/contact';
  static const projectDetail = '/project-detail';

  static const String skills = '/skills';
  static const String education = '/education';
  static const String work = '/work';
  static const String experience = '/experience';

}

abstract class RoutePages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.contact,
      page: () =>  ContactComponent(),
      transition: Transition.downToUp,
    ),

    // GetPage(
    //   name: AppRoutes.about,
    //   page: () => const AboutComponent(),
    //   transition: Transition.cupertino,
    // ),
    //

    // GetPage(
    //   name: AppRoutes.projectDetail,
    //   page: () {
    //     final Project project = Get.arguments['project'];
    //     return ProjectDetailScreen(project: project);
    //   },
    //   transition: Transition.fadeIn,
    // ),
  ];
}