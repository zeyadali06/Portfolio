import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive_font_size.dart';

class ConclusionText extends StatelessWidget {
  const ConclusionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Thank you for visiting my portfolio!',
      style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(24, context)),
    );
  }
}
