import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/app_bar_button_model.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({super.key, required this.model, this.fontSize = 14});

  final AppBarButtonModel model;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: model.onPressed,
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 10)),
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
      ),
      child: Text(
        model.text,
        style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(fontSize, context)),
      ),
    );
  }
}
