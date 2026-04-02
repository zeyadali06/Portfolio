import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/localization/translation_files/app_localizations.dart';

extension LocalizationExtenstion on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;
}
