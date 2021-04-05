import 'package:courseapp/DashBoard/Card/card.dart';
import 'package:courseapp/InitialData/data_load.dart';
import 'package:courseapp/theme/sizes_helper.dart';
import 'package:courseapp/theme/styles.dart';
import 'package:flutter/material.dart';
class VerticleCard extends StatefulWidget {
  @override
  _VerticleCardState createState() => _VerticleCardState();
}

class _VerticleCardState extends State<VerticleCard> {
   List colors_list_one = [
    Styles.danger,
    Colors.white,
    Styles.primary_light_three,
    Colors.white,
    Styles.warning_light,
  ];

   List colors_list_two = [
     Colors.white,
     Styles.warning_light,
     Colors.white,
     Styles.danger,
     Colors.white,
   ];

  @override
  Widget build(BuildContext context) {
    var height = getHeight(context);
    var width = getWidth(context);
    return Container(
      padding: EdgeInsets.only(left:height*0.02,bottom: height*0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Container(
           width: width *0.45,
           child:  Column(
             children: [
               GridView.count(
                 mainAxisSpacing: height*0.02,
                 childAspectRatio: 1.0,
                 shrinkWrap: true,
                 physics: ScrollPhysics(),
                 crossAxisCount: 1,
                 children: List.generate(DataLoad.courses.length, (index) {
                   var i = index %10;
                   var num = i < 5 ? i : (
                   i == 5 ? 0 : i == 6 ? 1: i ==7 ? 2 : i == 8 ? 3 : 4
                   ) ;
                   return Center(
                     child:CardContent(DataLoad.courses[index],2,colors_list_one[num]),
                   );
                 }

                 ),
               ),
             ],
           ),
         ),
          Container(
            margin: EdgeInsets.only(top:height*0.1),
            width: width*0.45,
            child:  Column(
              children: [
                GridView.count(
                  mainAxisSpacing: height*0.02,
                  childAspectRatio: 1.0,
                  // padding: EdgeInsets.only(left:height*0.03),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  crossAxisCount: 1,
                  children: List.generate(DataLoad.coursesB.length, (index) {
                    var i = index %10;
                    var num = i < 5 ? i : (
                        i == 5 ? 0 : i == 6 ? 1: i ==7 ? 2 : i == 8 ? 3 : 4
                    ) ;
                    return Center(
                      child:CardContent(DataLoad.coursesB[index],1,colors_list_two[num]),
                    );
                  }

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}
