import 'package:courseapp/MyCourse/my_course.dart';
import 'package:courseapp/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() => runApp(App());

class App  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Lato2OFL"
      ),
      title: 'Course app',
      routes: <String,WidgetBuilder>{
        "/home": (BuildContext context) => new Home(),
        "/my_course":(BuildContext context) => new MyCourse(),
        "/profile": (BuildContext context) => new Profile(),
      },
     initialRoute: "/home",
      home: new Home(),

    );
  }
}


