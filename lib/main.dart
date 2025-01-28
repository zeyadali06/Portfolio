import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_me_section.dart';
import 'package:portfolio/widgets/contact_me_section.dart';
import 'package:portfolio/widgets/identification_section.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            IdentificationSection(),
            AboutMeSection(),
            ContactMeSection(),
          ],
        ),
      ),
    );
  }
}
