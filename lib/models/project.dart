import 'package:uuid/uuid.dart';

class ProjectModel {
  final String uid;
  final String name;
  final String description;
  final bool isStarred;

  ProjectModel(this.uid, this.name, this.description, this.isStarred);
}

var uuid = Uuid();

final ProjectModel sampleProject1 =
    ProjectModel(uuid.v4(), "Project 1", "Project 1 description", true);
final ProjectModel sampleProject2 =
    ProjectModel(uuid.v4(), "Project 2", "Project 2 description", false);
final ProjectModel sampleProject3 =
    ProjectModel(uuid.v4(), "Project 3", "Project 3 description", true);

final List<ProjectModel> sampleProjects = [
  sampleProject1,
  sampleProject2,
  sampleProject3
];
