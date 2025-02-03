import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/app_bar_button_model.dart';
import 'package:zeyad_ali_portfolio/utils/assets.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
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
        text: 'Home',
        onPressed: () async {
          await Scrollable.ensureVisible(
            WidgetsKeys.homeKey.currentContext!,
            duration: const Duration(seconds: 1),
          );
        },
      ),
      AppBarButtonModel(
        text: 'About Me',
        onPressed: () async {
          await Scrollable.of(WidgetsKeys.aboutKey.currentContext!).position.animateTo(
                homeSectionHeight - WidgetsKeys.desktopAppBarKey.currentContext!.size!.height,
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
              );
        },
      ),
      AppBarButtonModel(
        text: 'My Skills',
        onPressed: () async {
          await Scrollable.of(WidgetsKeys.mySkillsKey.currentContext!).position.animateTo(
                homeSectionHeight + aboutMeSectionHeight - WidgetsKeys.desktopAppBarKey.currentContext!.size!.height,
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
              );
        },
      ),
      AppBarButtonModel(
        text: 'Projects',
        onPressed: () async {
          await Scrollable.of(WidgetsKeys.projectsKey.currentContext!).position.animateTo(
                homeSectionHeight + aboutMeSectionHeight + mySkillsSectionHeight - WidgetsKeys.desktopAppBarKey.currentContext!.size!.height,
                duration: const Duration(seconds: 1),
                curve: Curves.ease,
              );
        },
      ),
      AppBarButtonModel(
        text: 'Contact Me',
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
      color: Colors.transparent.withValues(alpha: 0.9),
      padding: const EdgeInsets.only(
        left: Constants.kDesktopHorizontalPadding,
        right: Constants.kDesktopHorizontalPadding,
        top: 20,
        bottom: 20,
      ),
      child: Row(
        children: [
          const Logo(imagePath: Assets.imagesAndroidLogo),
          const SizedBox(width: 40),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff261852)),
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
                              CustomAppBarButton(model: buttons[index], highlighted: index == highlightedButtonIndex),
                              index >= 0 && index < buttons.length - 1 ? const SizedBox(width: 15) : const SizedBox(),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: DownloadCVButton(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          const Logo(imagePath: Assets.imagesAppleLogo),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(150, 150);
}
