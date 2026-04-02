import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/cubits/app_localization_cubit/app_localization_cubit.dart';
import 'package:zeyad_ali_portfolio/cubits/app_theme_cubit/app_theme_cubit.dart';
import 'package:zeyad_ali_portfolio/layouts/adaptive_layout.dart';
import 'package:zeyad_ali_portfolio/localization/translation_files/app_localizations.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';
import 'package:zeyad_ali_portfolio/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppThemeCubit>(
          create: (context) => AppThemeCubit(),
        ),
        BlocProvider(
          create: (context) => AppLocalizationCubit(),
        ),
      ],
      child: BlocBuilder<AppLocalizationCubit, AppLocalizationState>(
        builder: (context, state) {
          return BlocBuilder<AppThemeCubit, AppThemeState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                locale: BlocProvider.of<AppLocalizationCubit>(context).appLocale,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: const [
                  Constants.english,
                  Constants.arabic,
                ],
                theme: AppTheme.ligthMode,
                darkTheme: AppTheme.darkMode,
                themeMode: BlocProvider.of<AppThemeCubit>(context).appTheme,
                // ignore: prefer_const_constructors
                home: AdaptiveLayout(),
              );
            },
          );
        },
      ),
    );
  }
}
