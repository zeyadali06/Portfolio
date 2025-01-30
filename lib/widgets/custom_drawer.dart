import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/app_bar_button_model.dart';
import 'package:zeyad_ali_portfolio/utils/assets.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_app_bar_button.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/download_cv_button.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/logo.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: CustomGradientContainer(
        child: CustomSingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              DrawerHeader(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Logo(imagePath: Assets.imagesAndroidLogo),
                    const SizedBox(width: 10),
                    const Logo(imagePath: Assets.imagesAppleLogo),
                  ],
                ),
              ),
              CustomAppBarButton(
                model: AppBarButtonModel(
                  onPressed: () async {
                    scaffoldKey.currentState?.closeEndDrawer();
                    await Scrollable.ensureVisible(WidgetsKeys.aboutKey.currentContext!, duration: Duration(seconds: 1));
                  },
                  text: 'About Me',
                ),
              ),
              const SizedBox(height: 15),
              CustomAppBarButton(
                model: AppBarButtonModel(
                  onPressed: () async {
                    scaffoldKey.currentState?.closeEndDrawer();
                    await Scrollable.ensureVisible(WidgetsKeys.projectsKey.currentContext!, duration: Duration(seconds: 1));
                  },
                  text: 'Projects',
                ),
              ),
              const SizedBox(height: 15),
              CustomAppBarButton(
                model: AppBarButtonModel(
                  onPressed: () async {
                    scaffoldKey.currentState?.closeEndDrawer();
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
