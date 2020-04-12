import 'package:cloudfolio/models/project.dart';
import 'package:cloudfolio/screens/project_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProjectItemWidget extends StatelessWidget {
  final ProjectModel project;

  const ProjectItemWidget({this.project});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).primaryTextTheme.display1;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ProjectScreen(
            project: project,
          ),
        ),
      ),
      child: Container(
          padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
          margin: EdgeInsets.only(top: 2.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text(project.name, style: textStyle)])),
    );
  }
}
