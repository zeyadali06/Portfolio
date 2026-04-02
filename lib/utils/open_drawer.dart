import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/cubits/app_localization_cubit/app_localization_cubit.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';

void openDrawer(BuildContext context, GlobalKey<ScaffoldState> key) {
  if (BlocProvider.of<AppLocalizationCubit>(context).appLocale.languageCode == Constants.arabic.languageCode) {
    key.currentState?.openDrawer();
  } else if (BlocProvider.of<AppLocalizationCubit>(context).appLocale.languageCode == Constants.english.languageCode) {
    key.currentState?.openEndDrawer();
  }
}
