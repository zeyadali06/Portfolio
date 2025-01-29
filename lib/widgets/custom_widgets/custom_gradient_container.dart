import 'package:flutter/material.dart';

class CustomGradientContainer extends StatelessWidget {
  const CustomGradientContainer({super.key, this.widgetKey, this.child, this.padding, this.reverse = false});

  final Widget? child;
  final EdgeInsets? padding;
  final bool reverse;
  final GlobalKey<State<StatefulWidget>>? widgetKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widgetKey,
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: Colors.black),
        gradient: LinearGradient(
          begin: reverse ? Alignment.centerRight : Alignment.centerLeft,
          end: reverse ? Alignment.centerLeft : Alignment.centerRight,
          colors: [
            Colors.black,
            const Color(0xff111827),
          ],
        ),
      ),
      child: child,
    );
  }
}
