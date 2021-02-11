import 'package:flutter/material.dart';
import 'package:trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        //eje que hace que el scroll sea horizontal
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("lib/assets/images/river.jpeg"),
          CardImage("lib/assets/images/beach.jpeg"),
          CardImage("lib/assets/images/beach_palm.jpeg"),
          CardImage("lib/assets/images/sunset.jpeg"),
        ],
      ),
      
    );
  }
}