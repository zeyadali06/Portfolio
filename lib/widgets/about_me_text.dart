import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/localization/localization_extenstion.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class AboutMeText extends StatelessWidget {
  const AboutMeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr.about_1,
          style: TextStyle(
            color: AppTheme.bodyTextColor,
            fontSize: getResponsiveFontSize(14, context),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          context.tr.about_2,
          style: TextStyle(
            color: AppTheme.bodyTextColor,
            fontSize: getResponsiveFontSize(14, context),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          context.tr.about_3,
          style: TextStyle(
            color: AppTheme.bodyTextColor,
            fontSize: getResponsiveFontSize(14, context),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          context.tr.about_4,
          style: TextStyle(
            color: AppTheme.bodyTextColor,
            fontSize: getResponsiveFontSize(14, context),
          ),
        ),
      ],
    );
  }
}
