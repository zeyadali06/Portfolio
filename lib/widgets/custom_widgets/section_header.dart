import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.headerText});

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: TextStyle(
        color: AppTheme.primaryTextColor,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(32, context),
      ),
    );
  }
}
