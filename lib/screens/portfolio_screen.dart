import 'package:cloudfolio/models/project.dart';
import 'package:cloudfolio/utils/consts.dart';
import 'package:cloudfolio/widgets/list_projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PortfolioScreen extends StatefulWidget {
  final List<ProjectModel> projects = sampleProjects;

  PortfolioScreen({Key key, projects}) : super(key: key);

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            appDisplayName,
            style: Theme.of(context).textTheme.title
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: Container(child: ListProjectWidget(projects: widget.projects)),
      ),
    );
  }
}
