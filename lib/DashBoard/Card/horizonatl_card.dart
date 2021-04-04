import 'package:courseapp/InitialData/data_load.dart';
import 'package:courseapp/theme/sizes_helper.dart';
import 'package:flutter/material.dart';
class HorizontalCard extends StatefulWidget {
  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(context)*0.75,
      child: GridView.count(
        crossAxisCount: 1,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List.generate(DataLoad.courses.length, (index) {
          return Center(
            child: Text(DataLoad.courses[index]['tag']),
          );
        }

        ),
      ),
    );
  }
}
