import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/project_model.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/projects_manager.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/mobile_project_card.dart';

class TabletProjectSection extends StatelessWidget {
  const TabletProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> projects = ProjectsManager.getProjects();
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.projectsKey,
      reverse: true,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kTabletHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kTabletVerticalPadding),
          const SectionHeader(headerText: 'My Projects'),
          const SizedBox(height: Constants.kTabletVerticalPadding),
          OverflowBar(
            overflowSpacing: 15,
            children: List.generate(projects.length, (int index) {
              return MobileProjectCard(project: projects[index]);
            }),
          ),
          const SizedBox(height: Constants.kTabletVerticalPadding),
        ],
      ),
    );
  }
}
