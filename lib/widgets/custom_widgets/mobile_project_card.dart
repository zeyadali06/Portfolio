import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zeyad_ali_portfolio/models/project_model.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_item_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/tool_item.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectCard extends StatelessWidget {
  const MobileProjectCard({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: const Color(0xff1e1e1e),
      padding: 20,
      child: Column(
        children: [
          CustomContainer(
            child: Text(
              project.title,
              style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(18, context), fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.asset(
              project.imagePath,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            project.description,
            style: TextStyle(color: Colors.white60, fontSize: getResponsiveFontSize(14, context)),
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
                glowColor: Colors.grey,
                duration: const Duration(seconds: 2),
                glowRadiusFactor: .15,
                repeat: true,
                animate: true,
                curve: Curves.easeInOutCubic,
                child: IconButton(
                  onPressed: () async => await launchUrl(Uri.parse(project.githubUrl)),
                  color: Colors.grey[850],
                  icon: const Icon(FontAwesomeIcons.github, color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              if (project.designUrl != null)
                AvatarGlow(
                  glowColor: Colors.grey,
                  duration: const Duration(seconds: 2),
                  glowRadiusFactor: .15,
                  repeat: true,
                  animate: true,
                  curve: Curves.easeInOutCubic,
                  child: IconButton(
                    onPressed: () async => await launchUrl(Uri.parse(project.designUrl!)),
                    color: Colors.grey[850],
                    icon: const Icon(FontAwesomeIcons.figma, color: Colors.white),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
