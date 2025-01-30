import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/desktop_custom_app_bar.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:portfolio/widgets/identification_intro_text.dart';
import 'package:portfolio/widgets/custom_widgets/profile_image.dart';

class DesktopIdentificationSection extends StatelessWidget {
  const DesktopIdentificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      padding: EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          DesktopCustomAppBar(),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: IdentificationIntroText(),
              ),
              const SizedBox(width: 50),
              Expanded(
                child: const ProfileImage(),
              ),
            ],
          ),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
        ],
      ),
    );
  }
}
