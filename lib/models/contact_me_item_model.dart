import 'package:flutter/material.dart';

class ContactMeItemModel {
  final IconData icon;
  final String title;
  final void Function()? onPressed;

  const ContactMeItemModel({
    required this.icon,
    required this.title,
    this.onPressed,
  });
}
