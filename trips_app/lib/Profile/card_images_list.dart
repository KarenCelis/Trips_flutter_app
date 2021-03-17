import 'package:flutter/material.dart';
import 'package:trips_app/Profile/card_images.dart';
import 'package:trips_app/card_image.dart';

class CardImagesList extends StatelessWidget {
  const CardImagesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 280, right: 30.0),
      height: 500.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        //eje que hace que el scroll sea horizontal

        children: [
          CardImages("lib/assets/images/river.jpeg"),
          CardImages("lib/assets/images/beach.jpeg"),
          CardImages("lib/assets/images/beach_palm.jpeg"),
          CardImages("lib/assets/images/sunset.jpeg"),
        ],
      ),
      
    );
  }
}