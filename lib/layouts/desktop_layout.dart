import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_single_child_scroll_view.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_custom_app_bar.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_about_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_contact_me_section.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_my_skills_section.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_projects_section.dart';
import 'package:zeyad_ali_portfolio/widgets/desktop_sections/desktop_identification_section.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  late final ScrollController _scrollController;
  late int _index;
  late bool _showAppBar;

  @override
  void initState() {
    _index = 0;
    _showAppBar = false;
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showAppBar = true;
      setState(() {});
    });

    super.initState();
  }

  void _onScroll() {
    if (_isSectionVisible(WidgetsKeys.homeKey)) {
      _setActiveSection(0);
    } else if (_isSectionVisible(WidgetsKeys.aboutKey)) {
      _setActiveSection(1);
    } else if (_isSectionVisible(WidgetsKeys.mySkillsKey)) {
      _setActiveSection(2);
    } else if (_isSectionVisible(WidgetsKeys.projectsKey)) {
      _setActiveSection(3);
    } else if (_isSectionVisible(WidgetsKeys.contactMeKey)) {
      _setActiveSection(4);
    }
  }

  bool _isSectionVisible(GlobalKey key) {
    final RenderBox? box = key.currentContext?.findRenderObject() as RenderBox?;
    if (box == null) return false;

    final Offset position = box.localToGlobal(Offset.zero);
    final double screenHeight = MediaQuery.of(context).size.height;
    final double sectionHeight = box.size.height;
    late bool result = false;

    if (key == WidgetsKeys.homeKey) {
      result = sectionHeight + position.dy >= sectionHeight / 2;
    } else if (key == WidgetsKeys.projectsKey) {
      final RenderBox? contactBox = WidgetsKeys.contactMeKey.currentContext?.findRenderObject() as RenderBox?;
      final double contactMeSectionHeight = contactBox!.size.height;
      final Offset contactBoxPosition = contactBox.localToGlobal(Offset.zero);
      bool res = contactMeSectionHeight - (contactBoxPosition.dy + contactMeSectionHeight - screenHeight) >= contactMeSectionHeight / 2;
      result = res ? false : position.dy <= screenHeight / 2 && position.dy + sectionHeight >= screenHeight / 2;
    } else if (key == WidgetsKeys.contactMeKey) {
      result = sectionHeight - (position.dy + sectionHeight - screenHeight) >= sectionHeight / 2;
    } else {
      result = position.dy <= screenHeight / 2 && position.dy + sectionHeight >= screenHeight / 2;
    }

    return result;
  }

  void _setActiveSection(int n) {
    _index = n;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: _showAppBar ? DesktopCustomAppBar(highlightedButtonIndex: _index) : null,
      body: CustomSingleChildScrollView(
        scrollController: _scrollController,
        child: const Column(
          children: [
            DesktopIdentificationSection(),
            DesktopAboutMeSection(),
            DesktopMySkillsSection(),
            DesktopProjectsSection(),
            DesktopContactMeSection(),
          ],
        ),
      ),
    );
  }
}
