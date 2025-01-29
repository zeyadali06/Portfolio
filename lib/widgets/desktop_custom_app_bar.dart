import 'package:flutter/material.dart';
import 'package:portfolio/models/app_bar_button_model.dart';
import 'package:portfolio/utils/responsive_font_size.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_widgets/custom_app_bar_button.dart';
import 'package:portfolio/widgets/custom_widgets/download_cv_button.dart';

class DesktopCustomAppBar extends StatelessWidget {
  const DesktopCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AppBarButtonModel> buttons = [
      AppBarButtonModel(
        text: 'About Me',
        onPressed: () async {
          await Scrollable.ensureVisible(WidgetsKeys.aboutKey.currentContext!, duration: Duration(seconds: 1));
        },
      ),
      AppBarButtonModel(
        text: 'Projects',
        onPressed: () async {
          await Scrollable.ensureVisible(WidgetsKeys.projectsKey.currentContext!, duration: Duration(seconds: 1));
        },
      ),
      AppBarButtonModel(
        text: 'Contact Me',
        onPressed: () async {
          await Scrollable.ensureVisible(WidgetsKeys.contactMeKey.currentContext!, duration: Duration(seconds: 1));
        },
      ),
    ];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff261852)),
        borderRadius: BorderRadius.circular(500),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(width: 30),
          Text(
            'Zeyad Ali',
            style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(24, context), fontWeight: FontWeight.w600),
          ),
          const Expanded(child: SizedBox(width: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              buttons.length,
              (int index) {
                return Row(
                  children: [
                    CustomAppBarButton(model: buttons[index]),
                    index >= 0 && index < buttons.length - 1 ? const SizedBox(width: 15) : SizedBox(),
                  ],
                );
              },
            ),
          ),
          const Expanded(child: SizedBox(width: 10)),
          const DownloadCVButton(),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
