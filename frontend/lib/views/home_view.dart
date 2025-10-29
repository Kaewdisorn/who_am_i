import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(width: 10, height: 10, color: Colors.red), // Placeholder widget
            // const NavBar(),
            // HeroSection(introText: controller.introText),
            // AboutSection(aboutText: controller.aboutText),
            // const SkillsSection(),
            // ProjectsSection(projects: controller.projects),
            // const ContactSection(),
          ],
        ),
      ),
    );
  }
}
