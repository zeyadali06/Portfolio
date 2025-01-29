import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive_font_size.dart';

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
              'Hello, ',
              style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(22, context), fontWeight: FontWeight.w600),
            ),
            Text(
              "I'm",
              style: TextStyle(color: Colors.red, fontSize: getResponsiveFontSize(22, context), fontWeight: FontWeight.w900),
            ),
          ],
        ),
        Text(
          'Zeyad Ali',
          style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(52, context), fontWeight: FontWeight.bold),
        ),
        Text(
          'Mobile Developer',
          style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(22, context), fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 25),
        Text(
          "Passionate Flutter Developer with extensive experience in creating user-focused mobile applications using Flutter, Bloc, and Clean Architecture. Proficient in state management, API integrations, Firebase, and AI model implementations. Skilled in crafting adaptive and responsive UIs while delivering innovative solutions to complex challenges.",
          style: TextStyle(color: Colors.white60),
        ),
      ],
    );
  }
}
