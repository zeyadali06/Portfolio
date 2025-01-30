import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zeyad_ali_portfolio/models/contact_me_item_model.dart';
import 'package:zeyad_ali_portfolio/utils/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

final class ContactMeManager {
  static List<ContactMeItemModel> getContactMeItems(BuildContext context) {
    return [
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
  }
}
