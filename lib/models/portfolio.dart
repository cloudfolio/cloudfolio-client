import 'package:cloudfolio/models/project.dart';

class PortfolioModel {
  final String uid;
  final String name;
  final List<ProjectModel> projects;

  PortfolioModel(this.uid, this.name, this.projects);
}
