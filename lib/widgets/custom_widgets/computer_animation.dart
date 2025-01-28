import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ComputerAnimation extends StatelessWidget {
  const ComputerAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
          child: Lottie.asset("assets/animations/Computer Animation1.json"),
        ),
      ),
    );
  }
}
