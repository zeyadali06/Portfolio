import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zeyad_ali_portfolio/models/contact_me_item_model.dart';
import 'package:url_launcher/url_launcher.dart';

final class ContactMeManager {
  static List<ContactMeItemModel> getContactMeItems(BuildContext context) {
    return [
      ContactMeItemModel(
        icon: FontAwesomeIcons.linkedin,
        title: 'Linkedin',
        onPressed: () async {
          await launchUrl(Uri.parse('https://www.linkedin.com/in/zeyadali06/'), mode: LaunchMode.externalApplication);
        },
      ),
      ContactMeItemModel(
        icon: FontAwesomeIcons.github,
        title: 'GitHub',
        onPressed: () async {
          await launchUrl(Uri.parse('https://github.com/zeyadali06'), mode: LaunchMode.externalApplication);
        },
      ),
      ContactMeItemModel(
        icon: Icons.mail,
        title: 'zeyadali6060@gmail.com',
        onPressed: () async {
          await launchUrl(Uri(scheme: 'mailto', path: 'zeyadali6060@gmail.com'), mode: LaunchMode.externalApplication);
        },
      ),
      ContactMeItemModel(
        icon: FontAwesomeIcons.phone,
        title: '+201024855010',
        onPressed: () async {
          await launchUrl(Uri.parse('tel:+201024855010'), mode: LaunchMode.externalApplication);
        },
      ),
    ];
  }
}
