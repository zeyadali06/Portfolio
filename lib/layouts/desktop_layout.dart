import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_about_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_contact_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_projects_section.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_identification_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSingleChildScrollView(
        child: Column(
          children: [
            DesktopIdentificationSection(),
            DesktopAboutMeSection(),
            DesktopProjectsSection(),
            DesktopContactMeSection(),
          ],
        ),
      ),
    );
  }
}
