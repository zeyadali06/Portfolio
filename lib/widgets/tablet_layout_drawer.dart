import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/layouts/tablet_layout.dart';
import 'package:portfolio/models/app_bar_button_model.dart';
import 'package:portfolio/utils/responsive_font_size.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_widgets/custom_app_bar_button.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:portfolio/widgets/custom_widgets/download_cv_button.dart';

class TabletLayoutDrawer extends StatelessWidget {
  const TabletLayoutDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: CustomGradientContainer(
        child: CustomSingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              DrawerHeader(
                child: Column(
                  children: [
                    const Icon(
                      FontAwesomeIcons.android,
                      size: 32,
                      color: Colors.white,
                    ),
                    Text(
                      'Zeyad Ali',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: getResponsiveFontSize(28, context)),
                    ),
                  ],
                ),
              ),
              CustomAppBarButton(
                model: AppBarButtonModel(
                  onPressed: () async {
                    TabletLayout.tabletLayoutKey.currentState?.closeEndDrawer();
                    await Scrollable.ensureVisible(WidgetsKeys.aboutKey.currentContext!, duration: Duration(seconds: 1));
                  },
                  text: 'About Me',
                ),
              ),
              const SizedBox(height: 15),
              CustomAppBarButton(
                model: AppBarButtonModel(
                  onPressed: () async {
                    TabletLayout.tabletLayoutKey.currentState?.closeEndDrawer();
                    await Scrollable.ensureVisible(WidgetsKeys.projectsKey.currentContext!, duration: Duration(seconds: 1));
                  },
                  text: 'Projects',
                ),
              ),
              const SizedBox(height: 15),
              CustomAppBarButton(
                model: AppBarButtonModel(
                  onPressed: () async {
                    TabletLayout.tabletLayoutKey.currentState?.closeEndDrawer();
                    await Scrollable.ensureVisible(WidgetsKeys.contactMeKey.currentContext!, duration: Duration(seconds: 1));
                  },
                  text: 'Contact Me',
                ),
              ),
              const SizedBox(height: 30),
              const DownloadCVButton(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
