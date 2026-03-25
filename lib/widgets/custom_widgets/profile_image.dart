import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/assets.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: AvatarGlow(
        glowColor: AppTheme.avatarGlowColor,
        duration: const Duration(seconds: 2),
        glowRadiusFactor: .20,
        repeat: true,
        animate: true,
        curve: Curves.easeInOutCubic,
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: AppTheme.profileImageBorderColors,
              center: const Alignment(0.5, -0.5),
              radius: 1.2,
              stops: [0.3, 0.6, 1.0],
              focal: const Alignment(0.7, -0.3),
              focalRadius: 0.3,
            ),
          ),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(Assets.imagesProfileImage),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
