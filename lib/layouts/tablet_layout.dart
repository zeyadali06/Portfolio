import 'package:flutter/material.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:portfolio/widgets/tablet_sections/tablet_about_me_section.dart';
import 'package:portfolio/widgets/tablet_sections/tablet_contact_me_section.dart';
import 'package:portfolio/widgets/tablet_sections/tablet_identification_section.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/tablet_sections/tablet_project_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: WidgetsKeys.tabletLayoutKey,
      endDrawer: CustomDrawer(scaffoldKey: WidgetsKeys.tabletLayoutKey),
      body: const CustomSingleChildScrollView(
        child: Column(
          children: [
            TabletIdentificationSection(),
            TabletAboutMeSection(),
            TabletProjectSection(),
            TabletContactMeSection(),
          ],
        ),
      ),
    );
  }
}
