import 'package:courseapp/theme/sizes_helper.dart';
import 'package:flutter/material.dart';
class CardContent extends StatelessWidget {
  var content ;
  var index;
  var color;
  CardContent(this.content,this.index,this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  index %2 == 0 ?
          Container(
            alignment: Alignment.topLeft,
            child:  Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(getHeight(context)*0.03),
              ),
              color: color,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: (){
                  print("pressed");
                },
                child: SizedBox(
                  width: getWidth(context)*0.40,
                  height: getHeight(context) * 0.90,
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
                      Image.asset('assets/images/digital.png')

                    ],
                  ),

                ),
              ),
            ),
          )
     :
      Container(
        alignment: Alignment.bottomLeft,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getHeight(context)*0.03),
          ),
          color: color,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: (){
              print("pressed");
            },
            child: SizedBox(
              width: getWidth(context)*0.40,
              height: getHeight(context) * 0.90,
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

