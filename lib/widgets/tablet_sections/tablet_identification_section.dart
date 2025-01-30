import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/profile_image.dart';
import 'package:zeyad_ali_portfolio/widgets/identification_intro_text.dart';

class TabletIdentificationSection extends StatelessWidget {
  const TabletIdentificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGradientContainer(
      padding: EdgeInsets.symmetric(horizontal: Constants.kTabletHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () => WidgetsKeys.tabletLayoutKey.currentState?.openEndDrawer(),
                icon: Icon(Icons.menu, color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .30,
            height: MediaQuery.sizeOf(context).width * .30,
            child: const ProfileImage(),
          ),
          const SizedBox(height: 20),
          const IdentificationIntroText(),
          const SizedBox(height: Constants.kTabletVerticalPadding),
        ],
      ),
    );
  }
}
