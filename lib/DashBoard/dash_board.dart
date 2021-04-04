import 'package:courseapp/DashBoard/heading_render.dart';
import 'package:courseapp/DashBoard/Card/horizonatl_card.dart';
import 'package:courseapp/DashBoard/name_avtar.dart';
import 'package:courseapp/DashBoard/Card/verticle_card.dart';
import 'package:courseapp/InitialData/data_load.dart';
import 'package:courseapp/theme/sizes_helper.dart';
import 'package:flutter/material.dart';
class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var components = [
      NameAvtar(),
      HeadingRender(),
      MediaQuery.of(context).orientation == Orientation.landscape
          ? HorizontalCard()
          : VerticleCard(),
    ];

    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context,index){
            return Column(
              children: [
                components[index],
              ],
            );
          },
      ),
    );
  }
}
