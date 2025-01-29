import 'package:flutter/material.dart';
import 'package:portfolio/layouts/adaptive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'CascadiaMono'),
      home: const AdaptiveLayout(),
    );
  }
}
