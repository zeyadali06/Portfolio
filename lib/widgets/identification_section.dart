import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Icon(
            FontAwesomeIcons.android,
            size: 48,
            color: Colors.white,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
            child: DesktopCustomAppBar(),
          ),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: Constants.kDesktopHorizontalPadding),
                  child: IdentificationIntroText(),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: MediaQuery.sizeOf(context).width * .225,
                padding: const EdgeInsets.only(right: Constants.kDesktopHorizontalPadding),
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
