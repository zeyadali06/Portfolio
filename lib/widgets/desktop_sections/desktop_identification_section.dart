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
      child: const Column(
        children: [
          SizedBox(height: 90),
          SizedBox(height: Constants.kDesktopVerticalPadding),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: IdentificationIntroText(),
              ),
              SizedBox(width: 50),
              Expanded(
                child: ProfileImage(),
              ),
            ],
          ),
          SizedBox(height: Constants.kDesktopVerticalPadding),
        ],
      ),
    );
  }
}
