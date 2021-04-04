import 'package:courseapp/DashBoard/dash_board.dart';
import 'package:courseapp/MyCourse/my_course.dart';
import 'package:courseapp/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:courseapp/theme/styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [DashBoard(),MyCourse(),Profile()];
  void onTapHanlde(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      // appBar: AppBar(title:Text('Course app')),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapHanlde,
        selectedItemColor: Styles.primary,
        unselectedItemColor: Styles.primary_light_second,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label : '',
            backgroundColor: Styles.primary,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.play_circle_fill),
            label : '',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.perm_identity),
            label : '',
          ),
        ],
      ),

    )
    );
  }
}
