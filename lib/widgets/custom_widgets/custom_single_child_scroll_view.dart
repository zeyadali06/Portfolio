import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  const CustomSingleChildScrollView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStatePropertyAll(Colors.white),
        ),
      ),
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
