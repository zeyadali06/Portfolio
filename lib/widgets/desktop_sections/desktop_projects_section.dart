import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/projects_manager.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:portfolio/widgets/custom_widgets/section_header.dart';
import 'package:portfolio/widgets/custom_widgets/desktop_project_card.dart';

class DesktopProjectsSection extends StatelessWidget {
  const DesktopProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> projects = ProjectsManager.getProjects();
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.projectsKey,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          const SectionHeader(headerText: 'My Projects'),
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
