import 'package:flutter/material.dart';

void snackBar(
  String text,
  BuildContext context, [
  Color textColor = Colors.white,
  Color backgroundColor = Colors.green,
]) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(25),
      backgroundColor: backgroundColor,
      duration: Duration(seconds: 1, milliseconds: 500),
    ),
  );
}
