import 'package:zeyad_ali_portfolio/models/my_skills_item_model.dart';
import 'package:zeyad_ali_portfolio/utils/assets.dart';

final class MySkillsManager {
  static List<MySkillsItemModel> getMySkills() {
    return const [
      MySkillsItemModel(title: 'Flutter', path: Assets.skillsIconsFlutter, url: 'https://flutter.dev/'),
      MySkillsItemModel(title: 'Dart', path: Assets.skillsIconsDart, url: 'https://dart.dev/'),
      MySkillsItemModel(title: 'Bloc', path: Assets.skillsIconsBloc, url: 'https://pub.dev/packages/flutter_bloc'),
      MySkillsItemModel(title: 'Socket.io', path: Assets.skillsIconsSocketIo, url: 'https://socket.io/'),
      MySkillsItemModel(title: 'Postman', path: Assets.skillsIconsPostman, url: 'https://www.postman.com/'),
      MySkillsItemModel(title: 'Firebase', path: Assets.skillsIconsFirebase, url: 'https://firebase.google.com/'),
      MySkillsItemModel(title: 'Git', path: Assets.skillsIconsGit, url: 'https://git-scm.com/'),
      MySkillsItemModel(title: 'GitHub', path: Assets.skillsIconsGitHub, url: 'https://github.com/'),
      MySkillsItemModel(title: 'Jira', path: Assets.skillsIconsJira, url: 'https://www.atlassian.com/software/jira'),
      MySkillsItemModel(title: 'Trello', path: Assets.skillsIconsTrello, url: 'https://trello.com/'),
    ];
  }
}
