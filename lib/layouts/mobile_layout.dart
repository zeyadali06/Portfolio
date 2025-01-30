import 'package:flutter/material.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:portfolio/widgets/mobile_sections/mobile_about_me_section.dart';
import 'package:portfolio/widgets/mobile_sections/mobile_contact_me_section.dart';
import 'package:portfolio/widgets/mobile_sections/mobile_identification_section.dart';
import 'package:portfolio/widgets/mobile_sections/mobile_project_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: WidgetsKeys.mobileLayoutKey,
      endDrawer: CustomDrawer(scaffoldKey: WidgetsKeys.mobileLayoutKey),
      body: const CustomSingleChildScrollView(
        child: Column(
          children: [
            MobileIdentificationSection(),
            MobileAboutMeSection(),
            MobileProjectSection(),
            MobileContactMeSection(),
          ],
        ),
      ),
    );
  }
}
