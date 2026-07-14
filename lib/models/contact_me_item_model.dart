import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactMeItemModel {
  final FaIconData icon;
  final String title;
  final void Function()? onPressed;

  const ContactMeItemModel({
    required this.icon,
    required this.title,
    this.onPressed,
  });
}
