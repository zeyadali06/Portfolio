import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/profile_image.dart';
import 'package:zeyad_ali_portfolio/widgets/identification_intro_text.dart';

class MobileIdentificationSection extends StatelessWidget {
  const MobileIdentificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      padding: const EdgeInsets.symmetric(horizontal: Constants.kMobileHorizontalPadding),
      child: Column(
        children: [
          SizedBox(height: WidgetsKeys.mobileLayoutKey.currentState!.appBarMaxHeight! + 30),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .30,
            child: const ProfileImage(),
          ),
          const SizedBox(height: 20),
          const IdentificationIntroText(),
          const SizedBox(height: Constants.kMobileVerticalPadding),
        ],
      ),
    );
  }
}
