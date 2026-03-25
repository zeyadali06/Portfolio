import 'package:flutter/material.dart';

abstract class AppTheme {
  static bool _isDark = true;

  static bool get isDark => _isDark;
  static set isDark(bool value) {
    _isDark = value;
  }

  static const String fontFamily = 'CascadiaMono';

  static Color get primaryTextColor => _isDark ? Colors.white : Colors.black;
  static Color get bodyTextColor => _isDark ? Colors.white60 : Colors.grey[850]!;
  static Color get iconColor => _isDark ? Colors.white : Colors.black;
  static Color get avatarBackgroundColor => _isDark ? Colors.grey[800]! : Colors.black;
  static Color get cardColor => _isDark ? const Color(0xff111827) : Colors.blue[100]!;
  static Color get projectCardColor => _isDark ? const Color(0xff141414) : Colors.blue[100]!;
  static Color get downloadCVButtonBackgroundColor => _isDark ? const Color(0xff320d56) : Colors.blue;
  static Color get mySkillsButtonBackgroundColor => _isDark ? Colors.grey.withValues(alpha: 0.2) : Colors.blue[100]!;
  static Color get appBarBorderColor => _isDark ? const Color(0xff320d56) : Colors.blue;
  static Color get logoColor => _isDark ? Colors.white : Colors.blue;
  static Color get customAppBarColor => _isDark ? Colors.transparent.withValues(alpha: 0.9) : Colors.white.withValues(alpha: .9);
  static Color get customAppBarInactiveItemColor => _isDark ? Colors.white : Colors.black;
  static Color get avatarGlowColor => _isDark ? const Color(0xff1400d1) : Colors.blue;
  static Color get dividerColor => _isDark ? Colors.grey : Colors.black;
  static Color get menuButtonColor => _isDark ? Colors.white : Colors.blue;
  static Color get thumbColor => _isDark ? Colors.white : Colors.blue;
  static Color get projectCardTitleColor => _isDark ? const Color(0xff484848) : Colors.blue[300]!;
  static Color get projectCardToolItemColor => _isDark ? const Color(0xff484848) : Colors.blue[300]!;
  static Color get projectCardIconAvatrGlowColor => _isDark ? Colors.grey : Colors.blue;
  static Color? get darkModeCheckBoxHoverColor => _isDark ? null : Colors.blue;
  static Color? get darkModeCheckBoxActiveColor => _isDark ? const Color(0xff320d56) : null;
  static Color get computerAnimationColor => _isDark ? const Color(0xff1400d1) : Colors.blueAccent;
  static List<Color> get sectionContainerColors => _isDark ? const [Colors.black, Color(0xff111827)] : [Colors.blue[200]!, Colors.blue[200]!, Colors.white];
  static List<Color> get customAppBarActiveItemColors => _isDark ? [const Color(0xff320d56), Colors.blue, Colors.white] : const [Colors.blue, Colors.blue, Colors.black];
  static List<Color> get profileImageBorderColors => _isDark ? const [Color(0xff1400d1), Color(0xff7a0fa0), Color(0xffe91e63)] : [Colors.blue, Colors.blue[100]!, Colors.white];

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
    fontFamily: fontFamily,
  );

  static final ThemeData darkMode = ThemeData(
    fontFamily: fontFamily,
  );
}
