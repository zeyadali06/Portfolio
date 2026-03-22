import 'package:flutter/material.dart';

abstract class AppTheme {
  static bool _isDark = true;

  static bool get isDark => _isDark;
  static set isDark(bool value) {
    _isDark = value;
  }

  static Color get primaryTextColor => _isDark ? Colors.white : Colors.black;
  static Color get bodyTextColor => _isDark ? Colors.white60 : Colors.black;
  static Color get iconColor => _isDark ? Colors.white : Colors.black;
  static Color get avatarBackgroundColor => _isDark ? Colors.grey[800]! : Colors.black;
  static Color get cardColor => _isDark ? const Color(0xff111827) : Colors.grey;
  static Color get projectCardColor => _isDark ? const Color(0xff141414) : Colors.grey;
  static Color get downloadCVButtonBackgroundColor => _isDark ? const Color(0xff320d56) : Colors.orange;
  static Color get mySkillsButtonBackgroundColor => _isDark ? Colors.grey.withValues(alpha: 0.2) : Colors.orange;
  static Color get appBarBorderColor => _isDark ? const Color(0xff261852) : Colors.black;

  static ThemeMode fromString(String value) {
    switch (value) {
      case 'system':
        return ThemeMode.system;
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  static final ThemeData ligthMode = ThemeData(
    fontFamily: 'CascadiaMono',
  );

  static final ThemeData darkMode = ThemeData(
    fontFamily: 'CascadiaMono',
  );
}
