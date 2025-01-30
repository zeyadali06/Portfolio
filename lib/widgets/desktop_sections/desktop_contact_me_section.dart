import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/contact_me_item_model.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/contact_me_manager.dart';
import 'package:zeyad_ali_portfolio/utils/widgets_keys.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/conclusion_text.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/desktop_contact_me_item.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/section_header.dart';

class DesktopContactMeSection extends StatelessWidget {
  const DesktopContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ContactMeItemModel> models = ContactMeManager.getContactMeItems(context);

    return CustomGradientContainer(
      widgetKey: WidgetsKeys.contactMeKey,
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: Constants.kDesktopHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          const SectionHeader(headerText: 'Contact Me'),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: List.generate(
              models.length,
              (int index) {
                return DesktopContactMeItem(model: models[index]);
              },
            ),
          ),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          const ConclusionText(),
          const SizedBox(height: Constants.kDesktopVerticalPadding),
          const Row(),
        ],
      ),
    );
  }
}
