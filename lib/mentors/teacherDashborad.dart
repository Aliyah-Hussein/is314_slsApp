import 'package:flutter/material.dart';
import 'package:tutorial_app/models/class.dart';
import 'package:tutorial_app/models/teacher.dart';


import '../entityCard.dart';
import 'mentorClass.dart';


class TeacherDashboard extends StatelessWidget {
  final Teacher teacher;
  final List<Class> classes;

  TeacherDashboard(this.teacher, this.classes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Class"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: GridView.count(
              crossAxisCount: 4,
              children: classes
                  .map(
                    (c) => EntityCard(
                  name: c.className,


                ),
              )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

