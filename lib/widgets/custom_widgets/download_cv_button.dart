import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';
import 'package:zeyad_ali_portfolio/utils/responsive_font_size.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color(0xff320d56),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: () async {
        await launchUrl(Uri.parse(Constants.cvLink));
      },
      child: Text(
        'Download CV',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: getResponsiveFontSize(14, context)),
      ),
    );
  }
}
