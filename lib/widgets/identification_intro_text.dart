import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/localization/localization_extenstion.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class IdentificationIntroText extends StatelessWidget {
  const IdentificationIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.tr.hello,
              style: TextStyle(
                color: AppTheme.primaryTextColor,
                fontSize: getResponsiveFontSize(22, context),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              context.tr.iam,
              style: TextStyle(
                color: Colors.red,
                fontSize: getResponsiveFontSize(22, context),
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        Text(
          context.tr.zeyad_ali,
          style: TextStyle(
            color: AppTheme.primaryTextColor,
            fontSize: getResponsiveFontSize(52, context),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          context.tr.mobile_developer,
          style: TextStyle(
            color: AppTheme.primaryTextColor,
            fontSize: getResponsiveFontSize(22, context),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 25),
        Text(
          context.tr.introduction,
          style: TextStyle(
            color: AppTheme.bodyTextColor,
          ),
        ),
      ],
    );
  }
}
