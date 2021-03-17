import 'package:flutter/material.dart';
import 'package:trips_app/floating_action_button_green.dart';

class CardImages extends StatelessWidget {
  String pathImage;
CardImages(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 200.0,
      width: 350.0,
      //margin: EdgeInsets.only(top: 80.0),
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

    final card_pe = Container(
      height: 100.0,
      width: 150.0,
      margin: EdgeInsets.only(top: 200.0,left: 80.0),
     
 decoration: BoxDecoration(
    color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.5,
                offset: Offset(0.0, 7.0))
          ]
 ),
      
    

    );
    return Stack(
       alignment: Alignment(0.9,1.1),
      children: [
          card,
          card_pe,
        FloatingActionButtonGreen()
      ],
     
    );
  }
}
