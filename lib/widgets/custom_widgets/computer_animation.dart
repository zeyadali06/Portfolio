import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/assets.dart';

class ComputerAnimation extends StatelessWidget {
  const ComputerAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: AvatarGlow(
        glowRadiusFactor: .20,
        glowColor: Colors.blueAccent,
        duration: Duration(seconds: 2),
        repeat: true,
        animate: true,
        curve: Curves.easeInOutCubic,
        glowShape: BoxShape.circle,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Lottie.asset(Assets.animationsComputerAnimation1),
        ),
      ),
    );
  }
}
