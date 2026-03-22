import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/contact_me_item_model.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class DesktopContactMeItem extends StatelessWidget {
  const DesktopContactMeItem({super.key, required this.model});

  final ContactMeItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        color: AppTheme.cardColor,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: model.onPressed,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  model.icon,
                  color: AppTheme.iconColor,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                model.title,
                style: TextStyle(
                  color: AppTheme.primaryTextColor,
                  fontSize: getResponsiveFontSize(14, context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
