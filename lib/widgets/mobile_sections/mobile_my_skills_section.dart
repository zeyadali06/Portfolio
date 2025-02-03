import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/my_skills_item_model.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/my_skills_manager.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/mobile_my_skills_item.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';

class MobileMySkillsSection extends StatelessWidget {
  const MobileMySkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MySkillsItemModel> mySkills = MySkillsManager.getMySkills();

    return CustomGradientContainer(
      widgetKey: WidgetsKeys.mySkillsKey,
      padding: const EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          const SectionHeader(headerText: 'My Skills'),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: List.generate(
              mySkills.length,
              (int index) {
                return MobileMySkillsItem(model: mySkills[index]);
              },
            ),
          ),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          const Row(),
        ],
      ),
    );
  }
}
