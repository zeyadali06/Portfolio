import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/contact_me_item_model.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/responsive_font_size.dart';
import 'package:portfolio/utils/snackbar.dart';
import 'package:portfolio/utils/widgets_keys.dart';
import 'package:portfolio/widgets/custom_widgets/contact_me_item.dart';
import 'package:portfolio/widgets/custom_widgets/custom_gradient_container.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ContactMeItemModel> models = [
      ContactMeItemModel(
        icon: FontAwesomeIcons.linkedin,
        title: 'Linkedin',
        onPressed: () async {
          await launchUrl(Uri.parse('https://www.linkedin.com/in/zeyadali06/'));
        },
      ),
      ContactMeItemModel(
        icon: FontAwesomeIcons.github,
        title: 'GitHub',
        onPressed: () async {
          await launchUrl(Uri.parse('https://github.com/zeyadali06'));
        },
      ),
      ContactMeItemModel(
        icon: Icons.mail,
        title: 'zeyadali6060@gmail.com',
        onPressed: () async {
          await Clipboard.setData(ClipboardData(text: 'zeyadali6060@gmail.com'));
          if (context.mounted) {
            snackBar('Mail copied', context);
          }
        },
      ),
      ContactMeItemModel(
        icon: FontAwesomeIcons.phone,
        title: '+201024855010',
        onPressed: () async {
          await Clipboard.setData(ClipboardData(text: '+201024855010'));
          if (context.mounted) {
            snackBar('Phone copied', context);
          }
        },
      ),
    ];

    return CustomGradientContainer(
      widgetKey: WidgetsKeys.contactMeKey,
      reverse: true,
      padding: EdgeInsets.symmetric(horizontal: Constants.kPadding),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            'Contact Me',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: getResponsiveFontSize(32, context)),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  models.length,
                  (int index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ContactMeItem(model: models[index]),
                        index >= 0 && index < models.length - 1 ? const SizedBox(height: 15) : const SizedBox(),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Text(
            '<Thanks for scrolling>',
            style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(28, context)),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
