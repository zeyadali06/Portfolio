import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: AvatarGlow(
        glowColor: const Color(0xff1400d1),
        duration: Duration(seconds: 2),
        glowRadiusFactor: .20,
        repeat: true,
        animate: true,
        curve: Curves.easeInOutCubic,
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                Color(0xff1400d1),
                Color(0xff7a0fa0),
                Color(0xffe91e63),
              ],
              center: Alignment(0.5, -0.5),
              radius: 1.2,
              stops: [0.3, 0.6, 1.0],
              focal: Alignment(0.7, -0.3),
              focalRadius: 0.3,
            ),
          ),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile_image.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
