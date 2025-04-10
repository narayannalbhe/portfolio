import 'package:flutter/material.dart';
import 'package:portfolioproject/global/utils/AppSpacing.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '- 👋 Hi, I’m @narayannalbhe1, a passionate Flutter developer embarking on an exciting journey!',
                      style: TextStyle(
                        fontSize: 20,
                        color: isDark ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '- 👀 I’m interested in mobile app development, specifically using Flutter.',
                      style: TextStyle(
                        fontSize: 16,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      ' - 🌱 I’m currently learning and expanding my skills in Flutter to create robust and efficient cross-platform applications.',
                      style: TextStyle(
                        fontSize: 16,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      ' - 💞️ I’m looking to collaborate on interesting Flutter projects and contribute to the developer community.',
                      style: TextStyle(
                        fontSize: 16,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '  - 📫 You can reach me via email at narayannalbhe1@gmail.com or',
                      style: TextStyle(
                        fontSize: 16,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: '- Connect with me on LinkedIn: ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: isDark ? Colors.white : Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text:
                            'https://www.linkedin.com/in/narayan-nalbhe-87bb63155',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: isDark ? Colors.white : Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final size = constraints.maxWidth * 0.3; // Takes 30% of available width
                        return Container(
                          width: size,
                          height: size,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/profileImage.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                   AppSpacing.h10,
                    Text(
                      'Welcome to My Portfolio!',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    AppSpacing.h10,
                    Text(
                      'Flutter Developer.',
                      style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                    AppSpacing.h10,
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: Text('View Projects',
                      style: TextStyle(
                        color: isDark ? Colors.white : Colors.black,
                      ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

