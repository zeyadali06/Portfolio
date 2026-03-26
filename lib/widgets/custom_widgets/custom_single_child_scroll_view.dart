import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  const CustomSingleChildScrollView({super.key, required this.child, this.scrollController, this.thumbColor});

  final Widget child;
  final ScrollController? scrollController;
  final Color? thumbColor;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStatePropertyAll(thumbColor ?? Colors.white),
        ),
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        child: child,
      ),
    );
  }
}
