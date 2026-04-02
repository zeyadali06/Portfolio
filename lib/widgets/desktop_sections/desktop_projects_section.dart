import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/localization/localization_extenstion.dart';
import 'package:zeyad_ali_portfolio/models/project_model.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/projects_manager.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/desktop_project_card.dart';

class DesktopProjectsSection extends StatelessWidget {
  const DesktopProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> projects = ProjectsManager.getProjects(context);
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.projectsKey,
      reverse: true,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          // ignore: prefer_const_constructors
          SectionHeader(headerText: context.tr.projects),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          OverflowBar(
            overflowSpacing: 15,
            children: List.generate(projects.length, (int index) {
              return DesktopProjectCard(project: projects[index]);
            }),
          ),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
        ],
      ),
    );
  }
}
