import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage = "lib/assets/images/river.jpeg";
  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
          borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.5,
                offset: Offset(0.0, 7.0))
          ]),
    );
    return card;
  }
}
