import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/layouts/desktop_layout.dart';
import 'package:zeyad_ali_portfolio/layouts/mobile_layout.dart';
import 'package:zeyad_ali_portfolio/layouts/size_config.dart';
import 'package:zeyad_ali_portfolio/layouts/tablet_layout.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return const MobileLayout();
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      },
    );
  }
}
