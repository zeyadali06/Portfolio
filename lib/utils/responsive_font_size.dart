import 'package:flutter/material.dart';
import 'package:portfolio/layouts/size_config.dart';

double getResponsiveFontSize(double fontSize, BuildContext context) {
  double scaleFactor = _getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double _getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
