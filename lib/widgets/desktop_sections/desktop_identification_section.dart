import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/identification_intro_text.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/profile_image.dart';

class DesktopIdentificationSection extends StatelessWidget {
  const DesktopIdentificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      widgetKey: WidgetsKeys.homeKey,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
      // ignore: prefer_const_constructors
      child: Column(
        children: [
          const SizedBox(height: 90),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          // ignore: prefer_const_constructors
          Row(
            children: [
              // ignore: prefer_const_constructors
              Expanded(
                flex: 3,
                // ignore: prefer_const_constructors
                child: IdentificationIntroText(),
              ),
              const SizedBox(width: 50),
              // ignore: prefer_const_constructors
              Expanded(
                // ignore: prefer_const_constructors
                child: ProfileImage(),
              ),
            ],
          ),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
        ],
      ),
    );
  }
}
