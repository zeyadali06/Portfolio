// ignore_for_file: constant_identifier_names

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
    ToolType.cleanArchitecture: const ToolModel(text: 'Clean Architecture'),
    ToolType.mvvm: const ToolModel(text: 'MVVVM'),
    ToolType.mvc: const ToolModel(text: 'MVC'),
  };

  static List<ProjectModel> getProjects() {
    return [
      ProjectModel(
        title: 'Mini Instapay App',
        description:
            "The Mini InstaPay App is a Flutter-based financial app for seamless money transfers, account management, usage reports, and real-time notifications.\nIn this project, my role was implementing real-time notifications using Socket.io and generating financial reports to help users track their transactions effectively.",
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
        title: "Meal Recommendation App",
        description:
            "The Meal Recommendation App is a Flutter-based app that suggests meals based on user preferences. It uses Firebase for authentication and the Gemini AI model for recommendations. Users receive personalized meal suggestions along with ingredient lists.\nIn this project, my role included developing the splash screen, profile screen, meal details screen, and implementing the favorite icon functionality to allow users to save their preferred meals.",
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
        title: 'Tennis App',
        description:
            "The Tennis Player Training Prediction App helps players plan training sessions using weather forecasts. Built with Flutter, it supports location management, authentication, and a clean MVVM architecture. It integrates a machine learning model to predict optimal training times based on weather data.",
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
        title: "Fashion App",
        description:
            "The Fashion App, built with Flutter, offers a seamless shopping experience for clothing items. It features user authentication, profile management, and organized categories for easy browsing. Users can view product details, manage their cart, and track orders effortlessly.",
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
        title: 'ToDo App',
        description:
            "The To-Do List App is a Flutter-based application designed to help users manage their daily tasks efficiently. It offers a user-friendly interface where tasks can be added, marked as completed, or deleted. Users can categorize tasks into custom lists and set priorities, making it easier to focus on what matters most.",
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
  cleanArchitecture,
  mvvm,
  mvc;
}
