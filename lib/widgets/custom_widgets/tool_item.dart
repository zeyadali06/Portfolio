import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/tool_model.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_item_container.dart';
import 'package:url_launcher/url_launcher.dart';

class ToolItem extends StatelessWidget {
  const ToolItem({super.key, required this.tool});

  final ToolModel tool;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tool.url == null ? null : () async => await launchUrl(Uri.parse(tool.url!)),
      child: CustomContainer(
        color: AppTheme.projectCardToolItemColor,
        child: Text(
          tool.text,
          style: TextStyle(
            color: AppTheme.primaryTextColor,
            fontSize: getResponsiveFontSize(12, context),
          ),
        ),
      ),
    );
  }
}
