import 'package:flutter/material.dart';
import 'package:portfolioproject/global/utils/AppSpacing.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactComponent extends StatelessWidget {
  static const String linkedInURL = 'https://www.linkedin.com/in/narayan-nalbhe-87bb63155';
  static const String githubURL = 'https://github.com/narayannalbhe';
  static const String emailURL = 'mailto:narayannalbhe1@gmail.com';

  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get in Touch',
            style: TextStyle(
              color: isDark ? Colors.white : Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppSpacing.h20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildContactCard(
                context,
                icon: 'assets/gmail.png',
                label: 'Gmail',
                url: emailURL,
                isDark: isDark,
              ),
              _buildContactCard(
                context,
                icon: 'assets/linkedin.png',
                label: 'LinkedIn',
                url: linkedInURL,
                isDark: isDark,
              ),
              _buildContactCard(
                context,
                icon: 'assets/github.png',
                label: 'GitHub',
                url: githubURL,
                isDark: isDark,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard(
      BuildContext context, {
        required String icon,
        required String label,
        required String url,
        required bool isDark,
      }) {
    return Container(
      width: 110,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
      decoration: BoxDecoration(
        color: isDark ? Colors.blueGrey.shade900 : Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          IconButton(
            icon: Image.asset(
              icon,
              height: 24,
              color: icon.contains('github')
                  ? (isDark ? Colors.white : Colors.black)
                  : null,
            ),
            onPressed: () => _launchURL(url),
          ),
          AppSpacing.h10,

          Text(
            label,
            style: TextStyle(
              color: isDark ? Colors.white70 : Colors.blue.shade900,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

  }

}
