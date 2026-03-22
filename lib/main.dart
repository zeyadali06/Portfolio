import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zeyad_ali_portfolio/cubits/app_theme_cubit/app_theme_cubit.dart';
import 'package:zeyad_ali_portfolio/layouts/adaptive_layout.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeCubit>(
      create: (context) => AppThemeCubit(),
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.ligthMode,
            darkTheme: AppTheme.darkMode,
            themeMode: BlocProvider.of<AppThemeCubit>(context).appTheme,
            home: const AdaptiveLayout(),
          );
        },
      ),
    );
  }
}
