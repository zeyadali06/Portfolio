import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());

  ThemeMode appTheme = ThemeMode.dark;

  Future<void> changeTheme(bool dark) async {
    emit(AppThemeInitial());

    if (dark) {
      appTheme = ThemeMode.dark;
      AppTheme.isDark = true;
    } else {
      appTheme = ThemeMode.light;
      AppTheme.isDark = false;
    }

    emit(AppThemeUpdateTheme());
  }
}
