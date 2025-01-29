import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/get_projects_models.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:portfolio/widgets/custom_widgets/section_header.dart';
import 'package:portfolio/widgets/desktop_project_card.dart';

class DesktopProjectsSection extends StatelessWidget {
  const DesktopProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> projects = ProjectsManager.getProjects();
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.projectsKey,
      child: Column(
        children: [
          const SizedBox(height: 50),
          const SectionHeader(headerText: 'My Projects'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Constants.kPadding),
            child: Column(
              children: List.generate(projects.length, (int index) {
                return Column(
                  children: [
                    DesktopProjectCard(project: projects[index]),
                    index >= 0 && index < projects.length - 1 ? const SizedBox(height: 15) : SizedBox(),
                  ],
                );
              }),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
