import 'package:flutter/material.dart';
import 'package:frontend/widgets/nav_bar.dart';

// import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    //_loadLocale(_locale);
  }

  @override
  Widget build(BuildContext context) {
    // final controller = HomeController();

    return Scaffold(
      body: Column(
        children: [
          NavBar(
            // logoAsset: 'assets/logo.png',
          ),
          Expanded(
            child: SingleChildScrollView(
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
          ),
        ],
      ),
    );
  }
}
