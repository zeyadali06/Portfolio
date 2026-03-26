import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/cubits/app_theme_cubit/app_theme_cubit.dart';
import 'package:zeyad_ali_portfolio/models/app_bar_button_model.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/assets.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_app_bar_button.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_checkbox.dart';
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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomSingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    // ignore: prefer_const_constructors
                    DrawerHeader(
                      decoration: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 1, color: AppTheme.dividerColor),
                      ),
                      // ignore: prefer_const_constructors
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // ignore: prefer_const_constructors
                          Logo(imagePath: Assets.imagesAndroidLogo),
                          const SizedBox(width: 10),
                          // ignore: prefer_const_constructors
                          Logo(imagePath: Assets.imagesAppleLogo),
                        ],
                      ),
                    ),
                    CustomAppBarButton(
                      model: AppBarButtonModel(
                        onPressed: () async {
                          scaffoldKey.currentState?.closeEndDrawer();
                          await Scrollable.ensureVisible(WidgetsKeys.aboutKey.currentContext!, duration: const Duration(seconds: 1));
                        },
                        text: 'About Me',
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomAppBarButton(
                      model: AppBarButtonModel(
                        onPressed: () async {
                          scaffoldKey.currentState?.closeEndDrawer();
                          await Scrollable.ensureVisible(WidgetsKeys.mySkillsKey.currentContext!, duration: const Duration(seconds: 1));
                        },
                        text: 'My Skills',
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomAppBarButton(
                      model: AppBarButtonModel(
                        onPressed: () async {
                          scaffoldKey.currentState?.closeEndDrawer();
                          await Scrollable.ensureVisible(WidgetsKeys.projectsKey.currentContext!, duration: const Duration(seconds: 1));
                        },
                        text: 'Projects',
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomAppBarButton(
                      model: AppBarButtonModel(
                        onPressed: () async {
                          scaffoldKey.currentState?.closeEndDrawer();
                          await Scrollable.ensureVisible(WidgetsKeys.contactMeKey.currentContext!, duration: const Duration(seconds: 1));
                        },
                        text: 'Contact Me',
                      ),
                    ),
                    const SizedBox(height: 30),
                    // ignore: prefer_const_constructors
                    DownloadCVButton(),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dark Mode",
                        style: TextStyle(
                          color: AppTheme.primaryTextColor,
                          fontSize: getResponsiveFontSize(15, context),
                        ),
                      ),
                      const SizedBox(width: 15),
                      CustomCheckBox(
                        initValue: AppTheme.isDark,
                        hoverColor: AppTheme.darkModeCheckBoxHoverColor,
                        activeColor: AppTheme.darkModeCheckBoxActiveColor,
                        onChanged: (value) {
                          BlocProvider.of<AppThemeCubit>(context).changeTheme(value!);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  // TextButton(
                  //   child: Text(
                  //     "العربية",
                  //     style: TextStyle(
                  //       color: AppTheme.primaryTextColor,
                  //       fontSize: getResponsiveFontSize(14, context),
                  //     ),
                  //   ),
                  //   onPressed: () {},
                  // ),
                  // TextButton(
                  //   child: Text(
                  //     "English",
                  //     style: TextStyle(
                  //       color: AppTheme.primaryTextColor,
                  //       fontSize: getResponsiveFontSize(14, context),
                  //     ),
                  //   ),
                  //   onPressed: () {},
                  // ),
                  const SizedBox(height: Constants.kDesktopVerticalPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
