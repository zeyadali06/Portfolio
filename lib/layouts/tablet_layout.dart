import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:portfolio/widgets/tablet_about_me_section.dart';
import 'package:portfolio/widgets/tablet_contact_me_section.dart';
import 'package:portfolio/widgets/tablet_identification_section.dart';
import 'package:portfolio/widgets/tablet_layout_drawer.dart';
import 'package:portfolio/widgets/tablet_project_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  static final GlobalKey<ScaffoldState> tabletLayoutKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: tabletLayoutKey,
      endDrawer: const TabletLayoutDrawer(),
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
