import 'package:portfolio/models/tool_model.dart';

class ProjectModel {
  final String title;
  final String description;
  final String imagePath;
  final List<ToolModel> tools;
  final String githubUrl;
  final String? designUrl;

  const ProjectModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.tools,
    required this.githubUrl,
    this.designUrl,
  });
}
