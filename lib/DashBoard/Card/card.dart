import 'package:courseapp/theme/sizes_helper.dart';
import 'package:flutter/material.dart';
class CardContent extends StatelessWidget {
  var content ;
  var index;
  CardContent(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    print(content);
    return Container(
      alignment: Alignment.topLeft,
      child:  index %2 == 0 ?
      Card(
        color: Colors.white,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: (){
            print("pressed");
          },
          child: SizedBox(
            width: getWidth(context)*0.40,
            height: getHeight(context) * 0.25,
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text("hello 1"),
                  ],
                ),
                Row(
                  children: [
                    Text("hello 2"),
                  ],
                ),
                Row(
                  children: [
                    Text("hello 3"),
                  ],
                )
              ],
            ),

          ),
        ),
      ):
      Container(
        margin: EdgeInsets.only(top: getHeight(context)*0.05),
        child: Card(
          color: Colors.white,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: (){
              print("pressed");
            },
            child: SizedBox(
              width: getWidth(context)*0.40,
              height: getHeight(context) * 0.25,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text("hello 1"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("hello 2"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("hello 3"),
                    ],
                  )
                ],
              ),

            ),
          ),
        ),
      )
    );
  }
}

