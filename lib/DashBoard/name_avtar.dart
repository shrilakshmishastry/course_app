import 'package:courseapp/theme/sizes_helper.dart';
import 'package:courseapp/theme/styles.dart';
import 'package:flutter/material.dart';

class NameAvtar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var width = getWidth(context);
    var height = getHeight(context);
    Widget  potrait(){
      return  Text(
        "Hello,Julia!",
        style: TextStyle(
            color: Styles.primary,
            fontWeight: FontWeight.w600,
            fontSize: Styles.text_lg,
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.all(getWidth(context) > getHeight(context) ? width * 0.03 : height * 0.03),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget> [
         potrait(),
          new Container(
            child: CircleAvatar(
              child:  new Text(
                "Ju",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Styles.primary,
                ),
              ),
              backgroundColor: Styles.primary_light_three,
            ) ,
          ),
        ],
      ),
    );
  }
}
