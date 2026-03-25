import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/app_bar_button_model.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({
    super.key,
    required this.model,
    this.fontSize = 14,
    this.highlighted = false,
    this.textColor,
  });

  final AppBarButtonModel model;
  final double fontSize;
  final bool highlighted;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: model.onPressed,
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 5)),
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
      ),
      child: highlighted
          ? ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => LinearGradient(
                colors: AppTheme.customAppBarActiveItemColors,
              ).createShader(bounds),
              child: Text(
                model.text,
                style: TextStyle(fontSize: getResponsiveFontSize(fontSize, context)),
              ),
            )
          : Text(
              model.text,
              style: TextStyle(
                fontFamily: AppTheme.fontFamily,
                color: textColor ?? AppTheme.customAppBarInactiveItemColor,
                fontSize: getResponsiveFontSize(fontSize, context),
              ),
            ),
    );
  }
}
