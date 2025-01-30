import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class AboutMeText extends StatelessWidget {
  const AboutMeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, I'm Zeyad, a passionate and dedicated Flutter Developer with a strong foundation in creating efficient and visually appealing mobile applications. I'm currently pursuing my studies at the Faculty of Computer and Information Science, specializing in Information Systems.",
          style: TextStyle(color: Colors.white70, fontSize: getResponsiveFontSize(14, context)),
        ),
        const SizedBox(height: 15),
        Text(
          "I enjoy solving problems and creating impactful digital experiences. With experience in state management, Clean Architecture, and AI integrations, I thrive in combining innovative technologies to build user-centric solutions.",
          style: TextStyle(color: Colors.white70, fontSize: getResponsiveFontSize(14, context)),
        ),
        const SizedBox(height: 15),
        Text(
          "I have worked on several projects, ranging from personal to professional applications, showcasing my ability to handle different aspects of app development, including UI/UX design, backend integration, and advanced features like speech AI.",
          style: TextStyle(color: Colors.white70, fontSize: getResponsiveFontSize(14, context)),
        ),
        const SizedBox(height: 15),
        Text(
          "When I'm not coding, I enjoy exploring new tools, refining my skills, and contributing to projects that inspire me.",
          style: TextStyle(color: Colors.white70, fontSize: getResponsiveFontSize(14, context)),
        ),
      ],
    );
  }
}
