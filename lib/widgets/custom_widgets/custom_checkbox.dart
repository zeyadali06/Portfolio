import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({
    super.key,
    this.onChanged,
    required this.initValue,
    this.activeColor,
    this.hoverColor,
  });

  final void Function(bool? value)? onChanged;
  final bool initValue;
  Color? activeColor;
  Color? hoverColor;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool value;

  @override
  void initState() {
    value = widget.initValue;
    widget.activeColor = AppTheme.downloadCVButtonBackgroundColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      tristate: false,
      hoverColor: widget.hoverColor,
      activeColor: widget.activeColor,
      onChanged: (v) {
        value = v!;
        setState(() {});
        widget.onChanged?.call(v);
      },
    );
  }
}
