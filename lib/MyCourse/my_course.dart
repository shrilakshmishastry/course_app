import 'package:flutter/material.dart';


class  MyCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child :new TextButton(
            onPressed: (){
              Navigator.of(context).pushNamed("/profile");
            },
            child: Text('Press here')),
      ),
    );
  }
}
