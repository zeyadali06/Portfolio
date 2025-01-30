import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/models/contact_me_item_model.dart';
import 'package:zeyad_ali_portfolio/widgets/custom_widgets/custom_item_container.dart';

class MobileContactMeItem extends StatelessWidget {
  const MobileContactMeItem({super.key, required this.model});

  final ContactMeItemModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: model.onPressed,
      child: CustomContainer(
        child: Icon(
          model.icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
