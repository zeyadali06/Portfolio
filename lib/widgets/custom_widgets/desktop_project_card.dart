import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zeyad_ali_portfolio/models/project_model.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_item_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/tool_item.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopProjectCard extends StatelessWidget {
  const DesktopProjectCard({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: AppTheme.projectCardColor,
      padding: 20,
      child: Column(
        children: [
          CustomContainer(
            color: AppTheme.projectCardTitleColor,
            child: Text(
              project.title,
              style: TextStyle(
                color: AppTheme.primaryTextColor,
                fontSize: getResponsiveFontSize(18, context),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    project.imagePath,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      project.description,
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(14, context),
                        color: AppTheme.bodyTextColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 15,
                      runSpacing: 15,
                      children: List.generate(project.tools.length, (int index) {
                        return ToolItem(tool: project.tools[index]);
                      }),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        AvatarGlow(
                          glowColor: AppTheme.projectCardIconAvatrGlowColor,
                          duration: const Duration(seconds: 2),
                          glowRadiusFactor: .15,
                          repeat: true,
                          animate: true,
                          curve: Curves.easeInOutCubic,
                          child: IconButton(
                            onPressed: () async => await launchUrl(Uri.parse(project.githubUrl)),
                            color: AppTheme.avatarBackgroundColor,
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: AppTheme.iconColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        if (project.designUrl != null)
                          AvatarGlow(
                            glowColor: AppTheme.projectCardIconAvatrGlowColor,
                            duration: const Duration(seconds: 2),
                            glowRadiusFactor: .15,
                            repeat: true,
                            animate: true,
                            curve: Curves.easeInOutCubic,
                            child: IconButton(
                              onPressed: () async => await launchUrl(Uri.parse(project.designUrl!)),
                              color: AppTheme.avatarBackgroundColor,
                              icon: Icon(
                                FontAwesomeIcons.figma,
                                color: AppTheme.iconColor,
                              ),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
