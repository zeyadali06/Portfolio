// ignore_for_file: constant_identifier_names

import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/models/tool_model.dart';
import 'package:portfolio/utils/assets.dart';

final class ProjectsManager {
  static Map<ToolType, ToolModel> allTools = {
    ToolType.flutter: ToolModel(text: 'Flutter', url: 'https://flutter.dev/'),
    ToolType.dart: ToolModel(text: 'Dart', url: 'https://dart.dev/'),
    ToolType.lottie: ToolModel(text: 'Lottie Animations', url: 'https://lottiefiles.com/'),
    ToolType.animations: ToolModel(text: 'Animations'),
    ToolType.cubit: ToolModel(text: 'Cubit', url: 'https://pub.dev/packages/flutter_bloc'),
    ToolType.bloc: ToolModel(text: 'Bloc', url: 'https://pub.dev/packages/flutter_bloc'),
    ToolType.getX: ToolModel(text: 'GetX', url: 'https://pub.dev/packages/get'),
    ToolType.provider: ToolModel(text: 'Provider', url: 'https://pub.dev/packages/provider'),
    ToolType.riverpod: ToolModel(text: 'Riverpod', url: 'https://pub.dev/packages/riverpod'),
    ToolType.restfulApi: ToolModel(text: 'Restful Api'),
    ToolType.socketIo: ToolModel(text: 'Socket.io', url: 'https://socket.io/'),
    ToolType.dio: ToolModel(text: 'Dio', url: 'https://pub.dev/packages/dio'),
    ToolType.http: ToolModel(text: 'Http', url: 'https://pub.dev/packages/http'),
    ToolType.postman: ToolModel(text: 'Postman', url: 'https://www.postman.com/'),
    ToolType.firebase: ToolModel(text: 'Firebase', url: 'https://firebase.google.com/'),
    ToolType.supabase: ToolModel(text: 'Supabase', url: 'https://supabase.com/'),
    ToolType.hive: ToolModel(text: 'Hive', url: 'https://pub.dev/packages/hive_flutter/versions'),
    ToolType.flutter_secure_storage: ToolModel(text: 'Flutter Secure Storage', url: 'https://pub.dev/packages/flutter_secure_storage'),
    ToolType.shared_preferences: ToolModel(text: 'Shared Preferences', url: 'https://pub.dev/packages/shared_preferences'),
    ToolType.git_github: ToolModel(text: 'Git\\GitHub', url: 'https://github.com/'),
    ToolType.agile: ToolModel(text: 'Agile'),
    ToolType.trello: ToolModel(text: 'Trello', url: 'https://trello.com/'),
    ToolType.jira: ToolModel(text: 'Jira', url: 'https://www.atlassian.com/software/jira'),
    ToolType.figma: ToolModel(text: 'Figma', url: 'https://www.figma.com/'),
    ToolType.adobe: ToolModel(text: 'Adobe'),
    ToolType.ai_integration: ToolModel(text: 'Ai Integration'),
    ToolType.gemini: ToolModel(text: 'Gemini', url: 'https://gemini.google.com/app'),
    ToolType.chatgpt: ToolModel(text: 'ChatGpt', url: 'https://chatgpt.com/'),
    ToolType.deepseek: ToolModel(text: 'DeepSeek', url: 'https://www.deepseek.com/'),
    ToolType.stripe: ToolModel(text: 'Stripe', url: 'https://stripe.com/'),
    ToolType.getIt: ToolModel(text: 'Get_It', url: 'https://pub.dev/packages/get_it'),
    ToolType.cleanArchitecture: ToolModel(text: 'Clean Architecture'),
    ToolType.mvvm: ToolModel(text: 'MVVVM'),
    ToolType.mvc: ToolModel(text: 'MVC'),
  };

  static List<ProjectModel> getProjects() {
    return [
      ProjectModel(
        title: 'Mini Instapay App',
        description:
            "The Mini InstaPay App is a Flutter-based financial app for seamless money transfers, account management, usage reports, and real-time notifications.\nIn this project, my role was implementing real-time notifications using Socket.io and generating financial reports to help users track their transactions effectively.",
        imagePath: Assets.projects_prototypesMiniInstapayApp,
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
        imagePath: Assets.projects_prototypesMealRecommendationApp,
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
        imagePath: Assets.projects_prototypesTennisApp,
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
        imagePath: Assets.projects_prototypesFashionApp,
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
        imagePath: Assets.projects_prototypesToDoApp,
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
