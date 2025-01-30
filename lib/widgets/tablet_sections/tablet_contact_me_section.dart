import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/contact_me_item_model.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/contact_me_manager.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/conclusion_text.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/mobile_contact_me_item.dart';

class TabletContactMeSection extends StatelessWidget {
  const TabletContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ContactMeItemModel> models = ContactMeManager.getContactMeItems(context);

    return CustomGradientContainer(
      widgetKey: WidgetsKeys.contactMeKey,
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: Constants.kTabletHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kTabletVerticalPadding),
          const SectionHeader(headerText: 'Contact Me'),
          const SizedBox(height: Constants.kTabletVerticalPadding),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: List.generate(
              models.length,
              (int index) {
                return MobileContactMeItem(model: models[index]);
              },
            ),
          ),
          const SizedBox(height: Constants.kTabletVerticalPadding),
          const ConclusionText(),
          const SizedBox(height: Constants.kTabletVerticalPadding),
          const Row(),
        ],
      ),
    );
  }
}
