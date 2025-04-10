import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/Controllers/ThemeController/ThemeController.dart';
import 'package:portfolioproject/Routes/AppRoutes.dart';
import 'package:portfolioproject/Splash/SplashScreen.dart';
import 'package:portfolioproject/Views/Home/HomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: RoutePages.pages,
      theme: ThemeController().lightTheme,
      darkTheme: ThemeController().darkTheme,
    );
  }
}
