import 'package:courseapp/DashBoard/Card/card.dart';
import 'package:courseapp/InitialData/data_load.dart';
import 'package:courseapp/theme/sizes_helper.dart';
import 'package:flutter/material.dart';
class VerticleCard extends StatefulWidget {
  @override
  _VerticleCardState createState() => _VerticleCardState();
}

class _VerticleCardState extends State<VerticleCard> {

  @override
  Widget build(BuildContext context) {
    var height = getHeight(context);
    return Container(
      // height: getHeight(context),
      child: GridView.count(
        crossAxisSpacing: 1,
        childAspectRatio: 3/3.7,
        padding: EdgeInsets.only(left:height*0.03,top:height*0.04),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        crossAxisCount: 2,
        children: List.generate(DataLoad.courses.length, (index) {
          return Center(
            child:CardContent(DataLoad.courses[index],index),
          );
        }

        ),
      ),
    );

  }
}
