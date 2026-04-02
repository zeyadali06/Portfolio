import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';

part 'app_localization_state.dart';

class AppLocalizationCubit extends Cubit<AppLocalizationState> {
  AppLocalizationCubit() : super(AppLocalizationInitial());

  Locale appLocale = Constants.english;

  Future<void> changeLocale(Locale locale) async {
    emit(AppLocalizationInitial());

    appLocale = locale;

    emit(AppLocalizationUpdateLocale());
  }
}
