import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'translation_files/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ar'), Locale('en')];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @about_me.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get about_me;

  /// No description provided for @my_skills.
  ///
  /// In en, this message translates to:
  /// **'My Skills'**
  String get my_skills;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @contact_me.
  ///
  /// In en, this message translates to:
  /// **'Contact Me'**
  String get contact_me;

  /// No description provided for @download_cv.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get download_cv;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get dark_mode;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello, '**
  String get hello;

  /// No description provided for @iam.
  ///
  /// In en, this message translates to:
  /// **'I\'m'**
  String get iam;

  /// No description provided for @zeyad_ali.
  ///
  /// In en, this message translates to:
  /// **'Zeyad Ali'**
  String get zeyad_ali;

  /// No description provided for @mobile_developer.
  ///
  /// In en, this message translates to:
  /// **'Mobile Developer'**
  String get mobile_developer;

  /// No description provided for @introduction.
  ///
  /// In en, this message translates to:
  /// **'Passionate Flutter Developer with extensive experience in creating user-focused mobile applications using Flutter, Bloc, and Clean Architecture. Proficient in state management, API integrations, Firebase, and AI model implementations. Skilled in crafting adaptive and responsive UIs while delivering innovative solutions to complex challenges.'**
  String get introduction;

  /// No description provided for @about_1.
  ///
  /// In en, this message translates to:
  /// **'Hi, I\'m Zeyad, a passionate and dedicated Flutter Developer with a strong foundation in creating efficient and visually appealing mobile applications. I graduated from Faculty of Computer and Information Science, specializing in Information Systems.'**
  String get about_1;

  /// No description provided for @about_2.
  ///
  /// In en, this message translates to:
  /// **'I enjoy solving problems and creating impactful digital experiences. With experience in state management, Clean Architecture, and AI integrations, I thrive in combining innovative technologies to build user-centric solutions.'**
  String get about_2;

  /// No description provided for @about_3.
  ///
  /// In en, this message translates to:
  /// **'I have worked on several projects, ranging from personal to professional applications, showcasing my ability to handle different aspects of app development, including UI/UX design, Backend Integration, and advanced features like speech AI.'**
  String get about_3;

  /// No description provided for @about_4.
  ///
  /// In en, this message translates to:
  /// **'When I\'m not coding, I enjoy exploring new tools, refining my skills, and contributing to projects that inspire me.'**
  String get about_4;

  /// No description provided for @conclusion.
  ///
  /// In en, this message translates to:
  /// **'Thank you for visiting my portfolio!'**
  String get conclusion;

  /// No description provided for @linkai_app_name.
  ///
  /// In en, this message translates to:
  /// **'LinkAI'**
  String get linkai_app_name;

  /// No description provided for @linkai_app_description.
  ///
  /// In en, this message translates to:
  /// **'This project is a job-matching platform similar to LinkedIn or Wuzzuf, enhanced with an AI-powered voice interview feature. It helps employers assess communication skills through simulated interviews using speech analysis. The app is built with Flutter, and integrates custom AI models for voice-to-text, AI evaluation, and text-to-speech. It aims to improve hiring accuracy and candidate preparation.'**
  String get linkai_app_description;

  /// No description provided for @mini_instapay_app_name.
  ///
  /// In en, this message translates to:
  /// **'Mini Instapay'**
  String get mini_instapay_app_name;

  /// No description provided for @mini_instapay_app_description.
  ///
  /// In en, this message translates to:
  /// **'The Mini InstaPay App is a Flutter-based financial app for seamless money transfers, account management, usage reports, and real-time notifications.\nIn this project, my role was implementing real-time notifications using Socket.io and generating financial reports to help users track their transactions effectively.'**
  String get mini_instapay_app_description;

  /// No description provided for @meal_recommendation_app_name.
  ///
  /// In en, this message translates to:
  /// **'Meal Recommendation'**
  String get meal_recommendation_app_name;

  /// No description provided for @meal_recommendation_app_description.
  ///
  /// In en, this message translates to:
  /// **'The Meal Recommendation App is a Flutter-based app that suggests meals based on user preferences. It uses Firebase for authentication and the Gemini AI model for recommendations. Users receive personalized meal suggestions along with ingredient lists.\nIn this project, my role included developing the splash screen, profile screen, meal details screen, and implementing the favorite icon functionality to allow users to save their preferred meals.'**
  String get meal_recommendation_app_description;

  /// No description provided for @tennis_app_name.
  ///
  /// In en, this message translates to:
  /// **'Tennis'**
  String get tennis_app_name;

  /// No description provided for @tennis_app_description.
  ///
  /// In en, this message translates to:
  /// **'The Tennis App helps players plan training sessions using weather forecasts. Built with Flutter, it supports location management, authentication, and a clean MVVM architecture. It integrates a machine learning model to predict optimal training times based on weather data.'**
  String get tennis_app_description;

  /// No description provided for @fashion_app_name.
  ///
  /// In en, this message translates to:
  /// **'Fashion'**
  String get fashion_app_name;

  /// No description provided for @fashion_app_description.
  ///
  /// In en, this message translates to:
  /// **'The Fashion App, built with Flutter, offers a seamless shopping experience for clothing items. It features user authentication, profile management, and organized categories for easy browsing. Users can view product details, manage their cart, and track orders effortlessly.'**
  String get fashion_app_description;

  /// No description provided for @todo_app_name.
  ///
  /// In en, this message translates to:
  /// **'ToDo'**
  String get todo_app_name;

  /// No description provided for @todo_app_description.
  ///
  /// In en, this message translates to:
  /// **'The To-Do List App is a Flutter-based application designed to help users manage their daily tasks efficiently. It offers a user-friendly interface where tasks can be added, marked as completed, or deleted. Users can categorize tasks into custom lists and set priorities, making it easier to focus on what matters most.'**
  String get todo_app_description;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError('AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
