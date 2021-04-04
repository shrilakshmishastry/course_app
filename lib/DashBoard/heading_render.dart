import 'package:courseapp/theme/sizes_helper.dart';
import 'package:courseapp/theme/styles.dart';
import 'package:flutter/material.dart';
class HeadingRender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = getHeight(context);
    var width = getWidth(context);
    return Container(
      alignment: Alignment.topLeft,
      child:  new Padding(
        padding: EdgeInsets.only(
          left: height > width ? height * 0.03 : width*0.03,
        ),
        child: new Container(
          // color: Colors.black,
          width: height > width ?  width*0.70: width*0.50 ,
          child:  Text(
            "What do you want to learn today?",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: Styles.text_xx_lg,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
