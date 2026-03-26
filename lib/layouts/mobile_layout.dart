import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_drawer.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:zeyad_ali_portfolio/widgets/mobile_sections/mobile_about_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/mobile_sections/mobile_contact_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/mobile_sections/mobile_identification_section.dart';
import 'package:zeyad_ali_portfolio/widgets/mobile_sections/mobile_my_skills_section.dart';
import 'package:zeyad_ali_portfolio/widgets/mobile_sections/mobile_project_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: WidgetsKeys.mobileLayoutKey,
      endDrawer: CustomDrawer(scaffoldKey: WidgetsKeys.mobileLayoutKey),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        forceMaterialTransparency: true,
        actions: [
          GestureDetector(
            onTap: () {
              WidgetsKeys.mobileLayoutKey.currentState?.openEndDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(
                Icons.menu,
                color: AppTheme.iconColor,
              ),
            ),
          )
        ],
      ),
      // ignore: prefer_const_constructors
      body: CustomSingleChildScrollView(
        // ignore: prefer_const_constructors
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            MobileIdentificationSection(),
            // ignore: prefer_const_constructors
            MobileAboutMeSection(),
            // ignore: prefer_const_constructors
            MobileMySkillsSection(),
            // ignore: prefer_const_constructors
            MobileProjectSection(),
            // ignore: prefer_const_constructors
            MobileContactMeSection(),
          ],
        ),
      ),
    );
  }
}
