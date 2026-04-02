import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/cubits/app_localization_cubit/app_localization_cubit.dart';
import 'package:zeyad_ali_portfolio/localization/localization_extenstion.dart';
import 'package:zeyad_ali_portfolio/models/app_bar_button_model.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/assets.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/open_drawer.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_app_bar_button.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/download_cv_button.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/logo.dart';

class DesktopCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopCustomAppBar({super.key, required this.highlightedButtonIndex});

  final int highlightedButtonIndex;

  @override
  Widget build(BuildContext context) {
    final double homeSectionHeight = (WidgetsKeys.homeKey.currentContext?.findRenderObject() as RenderBox?)!.size.height;
    final double aboutMeSectionHeight = (WidgetsKeys.aboutKey.currentContext?.findRenderObject() as RenderBox?)!.size.height;
    final double mySkillsSectionHeight = (WidgetsKeys.mySkillsKey.currentContext?.findRenderObject() as RenderBox?)!.size.height;

    final List<AppBarButtonModel> buttons = [
      AppBarButtonModel(
        text: context.tr.home,
        onPressed: () async {
          await Scrollable.ensureVisible(
            WidgetsKeys.homeKey.currentContext!,
            duration: const Duration(seconds: 1),
          );
        },
      ),
      AppBarButtonModel(
        text: context.tr.about_me,
        onPressed: () async {
          await Scrollable.of(WidgetsKeys.aboutKey.currentContext!).position.animateTo(
                homeSectionHeight - WidgetsKeys.desktopAppBarKey.currentContext!.size!.height,
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
              );
        },
      ),
      AppBarButtonModel(
        text: context.tr.my_skills,
        onPressed: () async {
          await Scrollable.of(WidgetsKeys.mySkillsKey.currentContext!).position.animateTo(
                homeSectionHeight + aboutMeSectionHeight - WidgetsKeys.desktopAppBarKey.currentContext!.size!.height,
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
              );
        },
      ),
      AppBarButtonModel(
        text: context.tr.projects,
        onPressed: () async {
          await Scrollable.of(WidgetsKeys.projectsKey.currentContext!).position.animateTo(
                homeSectionHeight + aboutMeSectionHeight + mySkillsSectionHeight - WidgetsKeys.desktopAppBarKey.currentContext!.size!.height,
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
              );
        },
      ),
      AppBarButtonModel(
        text: context.tr.contact_me,
        onPressed: () async {
          await Scrollable.ensureVisible(
            WidgetsKeys.contactMeKey.currentContext!,
            duration: const Duration(seconds: 1),
          );
        },
      ),
    ];

    return Container(
      key: WidgetsKeys.desktopAppBarKey,
      color: AppTheme.customAppBarColor,
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(width: Constants.kDesktopHorizontalPadding),
              // ignore: prefer_const_constructors
              Logo(
                imagePath: Assets.imagesAndroidLogo,
                color: AppTheme.logoColor,
              ),
              const SizedBox(width: 40),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppTheme.appBarBorderColor),
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: List.generate(
                            buttons.length,
                            (int index) {
                              return Row(
                                children: [
                                  if (index == 0 && BlocProvider.of<AppLocalizationCubit>(context).appLocale.languageCode == Constants.arabic.languageCode) const SizedBox(width: 15),
                                  CustomAppBarButton(model: buttons[index], highlighted: index == highlightedButtonIndex),
                                  if (index >= 0 && index < buttons.length - 1) const SizedBox(width: 15),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Flexible(
                        // ignore: prefer_const_constructors
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          // ignore: prefer_const_constructors
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5, left: 5),
                            // ignore: prefer_const_constructors
                            child: DownloadCVButton(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              // ignore: prefer_const_constructors
              Logo(
                imagePath: Assets.imagesAppleLogo,
                color: AppTheme.logoColor,
              ),
              const SizedBox(width: Constants.kDesktopHorizontalPadding),
            ],
          ),
          Positioned(
            top: 0,
            right: Constants.kDesktopHorizontalPadding / 2,
            bottom: 0,
            child: IconButton(
              onPressed: () {
                openDrawer(context, WidgetsKeys.desktopLayoutKey);
              },
              icon: Icon(
                Icons.menu,
                color: AppTheme.menuButtonColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(150, 150);
}
