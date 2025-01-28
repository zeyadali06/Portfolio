import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_app_bar.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:portfolio/widgets/identification_intro.dart';
import 'package:portfolio/widgets/custom_widgets/profile_image.dart';

class IdentificationSection extends StatelessWidget {
  const IdentificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: Constants.kPadding),
            child: CustomAppBar(),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: Constants.kPadding),
                  child: IdentificationIntro(),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: MediaQuery.sizeOf(context).width * .225,
                height: MediaQuery.sizeOf(context).width * .225,
                padding: const EdgeInsets.only(right: Constants.kPadding),
                child: const ProfileImage(),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
