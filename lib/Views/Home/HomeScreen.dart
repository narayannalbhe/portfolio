import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolioproject/Controllers/ThemeController/ThemeController.dart';
import 'package:portfolioproject/Routes/AppRoutes.dart';
import 'package:portfolioproject/Views/Home/Components/ContactComponent.dart';
import 'package:portfolioproject/Views/Home/Components/EducationComponent.dart';
import 'package:portfolioproject/Views/Home/Components/ExperienceComponent.dart';
import 'package:portfolioproject/Views/Home/Components/HomeComponent.dart';
import 'package:portfolioproject/Views/Home/Components/SkillComponent.dart';
import 'package:portfolioproject/Views/Home/Components/WorkComponent.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController _themeController = Get.find();
  final ScrollController _scrollController = ScrollController();



  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive breakpoints
          final bool isMobile = constraints.maxWidth < 600;
          final bool isTablet = constraints.maxWidth < 1200;

          return Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeComponent(),
                    const Divider(thickness: 2, color: Colors.purple),
                    if (!isMobile)
                      // AboutComponent(),
                     SkillComponent(),
                    EducationComponent(),
                    WorkComponent(),
                     ExperienceComponent(),
                     ContactComponent(),
                  ],
                ),
              ),

              // Floating Theme Toggle Button (Top Right)
              Positioned(
                top: isMobile ? 30 : 40,
                right: isMobile ? 15 : 30,
                child: Obx(
                      () => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      color: _themeController.isDarkMode.value
                          ? Colors.white.withOpacity(0.1)
                          : Colors.black.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        _themeController.isDarkMode.value
                            ? Icons.light_mode
                            : Icons.dark_mode,
                        color: _themeController.isDarkMode.value
                            ? Colors.white
                            : Colors.black,
                        size: isMobile ? 24 : 28,
                      ),
                      onPressed: _themeController.toggleTheme,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}


