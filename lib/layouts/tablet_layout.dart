import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:zeyad_ali_portfolio/widgets/tablet_sections/tablet_about_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/tablet_sections/tablet_contact_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/tablet_sections/tablet_identification_section.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_drawer.dart';
import 'package:zeyad_ali_portfolio/widgets/tablet_sections/tablet_project_section.dart';

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
