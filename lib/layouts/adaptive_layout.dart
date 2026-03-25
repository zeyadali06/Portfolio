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
          // ignore: prefer_const_constructors
          return MobileLayout();
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          // ignore: prefer_const_constructors
          return TabletLayout();
        } else {
          // ignore: prefer_const_constructors
          return DesktopLayout();
        }
      },
    );
  }
}
