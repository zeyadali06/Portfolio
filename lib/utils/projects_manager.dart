// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/localization/localization_extenstion.dart';
import 'package:zeyad_ali_portfolio/models/project_model.dart';
import 'package:zeyad_ali_portfolio/models/tool_model.dart';
import 'package:zeyad_ali_portfolio/utils/assets.dart';

final class ProjectsManager {
  static Map<ToolType, ToolModel> allTools = {
    ToolType.flutter: const ToolModel(text: 'Flutter', url: 'https://flutter.dev/'),
    ToolType.dart: const ToolModel(text: 'Dart', url: 'https://dart.dev/'),
    ToolType.lottie: const ToolModel(text: 'Lottie Animations', url: 'https://lottiefiles.com/'),
    ToolType.animations: const ToolModel(text: 'Animations'),
    ToolType.cubit: const ToolModel(text: 'Cubit', url: 'https://pub.dev/packages/flutter_bloc'),
    ToolType.bloc: const ToolModel(text: 'Bloc', url: 'https://pub.dev/packages/flutter_bloc'),
    ToolType.getX: const ToolModel(text: 'GetX', url: 'https://pub.dev/packages/get'),
    ToolType.provider: const ToolModel(text: 'Provider', url: 'https://pub.dev/packages/provider'),
    ToolType.riverpod: const ToolModel(text: 'Riverpod', url: 'https://pub.dev/packages/riverpod'),
    ToolType.restfulApi: const ToolModel(text: 'Restful Api'),
    ToolType.socketIo: const ToolModel(text: 'Socket.io', url: 'https://socket.io/'),
    ToolType.dio: const ToolModel(text: 'Dio', url: 'https://pub.dev/packages/dio'),
    ToolType.http: const ToolModel(text: 'Http', url: 'https://pub.dev/packages/http'),
    ToolType.postman: const ToolModel(text: 'Postman', url: 'https://www.postman.com/'),
    ToolType.firebase: const ToolModel(text: 'Firebase', url: 'https://firebase.google.com/'),
    ToolType.supabase: const ToolModel(text: 'Supabase', url: 'https://supabase.com/'),
    ToolType.hive: const ToolModel(text: 'Hive', url: 'https://pub.dev/packages/hive_flutter/versions'),
    ToolType.flutter_secure_storage: const ToolModel(text: 'Flutter Secure Storage', url: 'https://pub.dev/packages/flutter_secure_storage'),
    ToolType.shared_preferences: const ToolModel(text: 'Shared Preferences', url: 'https://pub.dev/packages/shared_preferences'),
    ToolType.git_github: const ToolModel(text: 'Git\\GitHub', url: 'https://github.com/'),
    ToolType.agile: const ToolModel(text: 'Agile'),
    ToolType.trello: const ToolModel(text: 'Trello', url: 'https://trello.com/'),
    ToolType.jira: const ToolModel(text: 'Jira', url: 'https://www.atlassian.com/software/jira'),
    ToolType.figma: const ToolModel(text: 'Figma', url: 'https://www.figma.com/'),
    ToolType.adobe: const ToolModel(text: 'Adobe'),
    ToolType.ai_integration: const ToolModel(text: 'Ai Integration'),
    ToolType.gemini: const ToolModel(text: 'Gemini', url: 'https://gemini.google.com/app'),
    ToolType.chatgpt: const ToolModel(text: 'ChatGpt', url: 'https://chatgpt.com/'),
    ToolType.deepseek: const ToolModel(text: 'DeepSeek', url: 'https://www.deepseek.com/'),
    ToolType.stripe: const ToolModel(text: 'Stripe', url: 'https://stripe.com/'),
    ToolType.getIt: const ToolModel(text: 'Get_It', url: 'https://pub.dev/packages/get_it'),
    ToolType.audioplayers: const ToolModel(text: 'Audioplayers', url: 'https://pub.dev/packages/audioplayers'),
    ToolType.avatarGlow: const ToolModel(text: 'Avatar_Glow', url: 'https://pub.dev/packages/avatar_glow'),
    ToolType.deviceInfoPlus: const ToolModel(text: 'Device_Info_Plus', url: 'https://pub.dev/packages/device_info_plus'),
    ToolType.filePicker: const ToolModel(text: 'File_Picker', url: 'https://pub.dev/packages/file_picker'),
    ToolType.flutterSound: const ToolModel(text: 'Flutter_Sound', url: 'https://pub.dev/packages/flutter_sound'),
    ToolType.fontAwesomeFlutter: const ToolModel(text: 'Font_Awesome_Flutter', url: 'https://pub.dev/packages/font_awesome_flutter'),
    ToolType.goRouter: const ToolModel(text: 'Go_Router', url: 'https://pub.dev/packages/go_router'),
    ToolType.googleFonts: const ToolModel(text: 'Google_Fonts', url: 'https://pub.dev/packages/google_fonts'),
    ToolType.iconsLauncher: const ToolModel(text: 'Icons_Launcher', url: 'https://pub.dev/packages/icons_launcher'),
    ToolType.imagePicker: const ToolModel(text: 'Image_Picker', url: 'https://pub.dev/packages/image_picker'),
    ToolType.injectable: const ToolModel(text: 'Injectable', url: 'https://pub.dev/packages/injectable'),
    ToolType.modalProgressHudNsn: const ToolModel(text: 'Modal_Progress_HUD_NSN', url: 'https://pub.dev/packages/modal_progress_hud_nsn'),
    ToolType.pathProvider: const ToolModel(text: 'Path_Provider', url: 'https://pub.dev/packages/path_provider'),
    ToolType.permissionHandler: const ToolModel(text: 'Permission_Handler', url: 'https://pub.dev/packages/permission_handler'),
    ToolType.pinCodeFields: const ToolModel(text: 'Pin_Code_Fields', url: 'https://pub.dev/packages/pin_code_fields'),
    ToolType.urlLauncher: const ToolModel(text: 'URL_Launcher', url: 'https://pub.dev/packages/url_launcher'),
    ToolType.cleanArchitecture: const ToolModel(text: 'Clean Architecture'),
    ToolType.mvvm: const ToolModel(text: 'MVVM'),
    ToolType.mvc: const ToolModel(text: 'MVC'),
  };

  static List<ProjectModel> getProjects(BuildContext context) {
    return [
      ProjectModel(
        title: context.tr.linkai_app_name,
        description: context.tr.linkai_app_description,
        imagePath: Assets.projectsPrototypesLinkAIApp,
        tools: _getTool(
          [
            ToolType.flutter,
            ToolType.cubit,
            ToolType.http,
            ToolType.getIt,
            ToolType.flutter_secure_storage,
            ToolType.shared_preferences,
            ToolType.audioplayers,
            ToolType.filePicker,
            ToolType.flutterSound,
            ToolType.goRouter,
            ToolType.injectable,
            ToolType.lottie,
            ToolType.pathProvider,
            ToolType.permissionHandler,
            ToolType.pinCodeFields,
            ToolType.urlLauncher,
            ToolType.restfulApi,
            ToolType.git_github,
          ],
        ),
        githubUrl: 'https://github.com/zeyadali06/LinkAI',
      ),
      ProjectModel(
        title: context.tr.mini_instapay_app_name,
        description: context.tr.mini_instapay_app_description,
        imagePath: Assets.projectsPrototypesMiniInstapayApp,
        tools: _getTool(
          [
            ToolType.flutter,
            ToolType.dio,
            ToolType.cubit,
            ToolType.getIt,
            ToolType.flutter_secure_storage,
            ToolType.shared_preferences,
            ToolType.restfulApi,
            ToolType.socketIo,
            ToolType.git_github,
          ],
        ),
        githubUrl: 'https://github.com/mostafamagde/mini_InstaPay',
      ),
      ProjectModel(
        title: context.tr.meal_recommendation_app_name,
        description: context.tr.meal_recommendation_app_description,
        imagePath: Assets.projectsPrototypesMealRecommendationApp,
        tools: _getTool(
          [
            ToolType.flutter,
            ToolType.gemini,
            ToolType.cubit,
            ToolType.getIt,
            ToolType.firebase,
            ToolType.flutter_secure_storage,
            ToolType.shared_preferences,
            ToolType.cleanArchitecture,
            ToolType.trello,
            ToolType.figma,
            ToolType.git_github,
          ],
        ),
        githubUrl: "https://github.com/Mohamedihab29592/meal-recommendation-A2",
        designUrl: "https://www.figma.com/design/zDyccAigoAviKiU5EsczkX/Recipes?node-id=0-1&p=f&t=D2Y6algmowYU78OL-0",
      ),
      ProjectModel(
        title: context.tr.tennis_app_name,
        description: context.tr.tennis_app_description,
        imagePath: Assets.projectsPrototypesTennisApp,
        tools: _getTool(
          [
            ToolType.flutter,
            ToolType.cubit,
            ToolType.dio,
            ToolType.firebase,
            ToolType.getIt,
            ToolType.cleanArchitecture,
            ToolType.ai_integration,
            ToolType.git_github,
          ],
        ),
        githubUrl: 'https://github.com/zeyadali06/TennisApp',
      ),
      ProjectModel(
        title: context.tr.fashion_app_name,
        description: context.tr.fashion_app_description,
        imagePath: Assets.projectsPrototypesFashionApp,
        tools: _getTool(
          [
            ToolType.flutter,
            ToolType.cubit,
            ToolType.firebase,
            ToolType.getIt,
            ToolType.cleanArchitecture,
            ToolType.flutter_secure_storage,
            ToolType.lottie,
            ToolType.git_github,
          ],
        ),
        githubUrl: "https://github.com/mahmoud-hassan1/Fashion-App",
        designUrl: "https://www.figma.com/design/eIEoyAf3TliYntkTH2gxYE/E-Commerce-App-Design-(Community)?node-id=0-1&node-type=canvas&t=jmSkhSwHQerBkkc5-0",
      ),
      ProjectModel(
        title: context.tr.todo_app_name,
        description: context.tr.todo_app_description,
        imagePath: Assets.projectsPrototypesToDoApp,
        tools: _getTool(
          [
            ToolType.flutter,
            ToolType.cubit,
            ToolType.lottie,
            ToolType.hive,
            ToolType.getIt,
            ToolType.git_github,
          ],
        ),
        githubUrl: 'https://github.com/zeyadali06/Teknosoft-tasks/tree/main/To-Do%20List%20App',
      ),
    ];
  }

  static List<ToolModel> _getTool(List<ToolType> tools) {
    final List<ToolModel> models = [];
    for (ToolType tool in tools) {
      if (!tools.contains(tool)) {
        throw Exception("${tool.name} doesn't exist.");
      }

      if (tools.where((t) => tool == t).length > 1) {
        throw Exception('${tool.name} appears more than once.');
      }

      models.add(allTools[tool]!);
    }
    return models;
  }
}

enum ToolType {
  flutter,
  dart,
  lottie,
  animations,
  cubit,
  bloc,
  getX,
  provider,
  riverpod,
  restfulApi,
  socketIo,
  dio,
  http,
  postman,
  firebase,
  supabase,
  hive,
  flutter_secure_storage,
  shared_preferences,
  git_github,
  agile,
  trello,
  jira,
  figma,
  adobe,
  ai_integration,
  gemini,
  chatgpt,
  deepseek,
  stripe,
  getIt,
  audioplayers,
  avatarGlow,
  deviceInfoPlus,
  filePicker,
  flutterSound,
  fontAwesomeFlutter,
  goRouter,
  googleFonts,
  iconsLauncher,
  imagePicker,
  injectable,
  modalProgressHudNsn,
  pathProvider,
  permissionHandler,
  pinCodeFields,
  urlLauncher,
  cleanArchitecture,
  mvvm,
  mvc;
}
