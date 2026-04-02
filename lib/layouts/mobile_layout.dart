import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/cubits/app_localization_cubit/app_localization_cubit.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/open_drawer.dart';
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
      endDrawer: BlocProvider.of<AppLocalizationCubit>(context).appLocale.languageCode == Constants.english.languageCode ? CustomDrawer(scaffoldKey: WidgetsKeys.desktopLayoutKey) : null,
      drawer: BlocProvider.of<AppLocalizationCubit>(context).appLocale.languageCode == Constants.arabic.languageCode ? CustomDrawer(scaffoldKey: WidgetsKeys.desktopLayoutKey) : null,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        forceMaterialTransparency: true,
        actions: BlocProvider.of<AppLocalizationCubit>(context).appLocale.languageCode == Constants.english.languageCode
            ? [
                GestureDetector(
                  onTap: () {
                    openDrawer(context, WidgetsKeys.mobileLayoutKey);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(
                      Icons.menu,
                      color: AppTheme.iconColor,
                    ),
                  ),
                )
              ]
            : null,
        leading: BlocProvider.of<AppLocalizationCubit>(context).appLocale.languageCode == Constants.arabic.languageCode
            ? GestureDetector(
                onTap: () {
                  openDrawer(context, WidgetsKeys.mobileLayoutKey);
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    Icons.menu,
                    color: AppTheme.iconColor,
                  ),
                ),
              )
            : null,
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
