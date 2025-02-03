import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zeyad_ali_portfolio/models/my_skills_item_model.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';

class MobileMySkillsItem extends StatelessWidget {
  const MobileMySkillsItem({super.key, required this.model});

  final MySkillsItemModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await launchUrl(Uri.parse(model.url), mode: LaunchMode.externalApplication);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withValues(alpha: 0.2),
        ),
        child: Column(
          children: [
            Image.asset(
              model.path,
              width: 30,
              height: 30,
            ),
            const SizedBox(height: 10),
            Text(
              model.title,
              style: TextStyle(color: Colors.white, fontSize: getResponsiveFontSize(14, context)),
            ),
          ],
        ),
      ),
    );
  }
}
