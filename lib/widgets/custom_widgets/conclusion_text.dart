import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/localization/localization_extenstion.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class ConclusionText extends StatelessWidget {
  const ConclusionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr.conclusion,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppTheme.primaryTextColor,
        fontSize: getResponsiveFontSize(24, context),
      ),
    );
  }
}
