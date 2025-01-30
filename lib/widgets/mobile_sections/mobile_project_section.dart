import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/projects_manager.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:portfolio/widgets/custom_widgets/section_header.dart';
import 'package:portfolio/widgets/custom_widgets/mobile_project_card.dart';

class MobileProjectSection extends StatelessWidget {
  const MobileProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> projects = ProjectsManager.getProjects();
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.projectsKey,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kMobileHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kMobileVerticalPadding),
          const SectionHeader(headerText: 'My Projects'),
          const SizedBox(height: Constants.kMobileVerticalPadding),
          OverflowBar(
            overflowSpacing: 15,
            children: List.generate(projects.length, (int index) {
              return MobileProjectCard(project: projects[index]);
            }),
          ),
          const SizedBox(height: Constants.kMobileVerticalPadding),
        ],
      ),
    );
  }
}
