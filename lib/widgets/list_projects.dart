import 'package:cloudfolio/models/project.dart';
import 'package:cloudfolio/screens/project_screen.dart';
import 'package:cloudfolio/widgets/item_project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListProjectWidget extends StatefulWidget {
  final List<ProjectModel> projects;

  ListProjectWidget({Key key, this.projects}) : super(key: key);

  @override
  _ListProjectWidgetState createState() => _ListProjectWidgetState();
}

class _ListProjectWidgetState extends State<ListProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.projects.length,
        itemBuilder: (BuildContext context, int index) {
          final ProjectModel project = widget.projects[index];
          return ProjectItemWidget(project: project);
        },
      ),
    );
  }
}
