import 'package:flutter/material.dart';
import 'package:portfolio/widgets/desktop_about_me_section.dart';
import 'package:portfolio/widgets/desktop_contact_me_section.dart';
import 'package:portfolio/widgets/desktop_projects_section.dart';
import 'package:portfolio/widgets/identification_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(
          scrollbarTheme: const ScrollbarThemeData(thumbColor: WidgetStatePropertyAll(Colors.grey)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              DesktopIdentificationSection(),
              DesktopAboutMeSection(),
              DesktopProjectsSection(),
              DesktopContactMeSection(),
            ],
          ),
        ),
      ),
    );
  }
}
