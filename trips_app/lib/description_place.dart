import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
//variables
  String namePlace;
  int stars;
  String descriptionPlace;
//constructor de la clase
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    //Estrella vacia
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(Icons.star_border, color: Colors.yellow),
    );
    //Estrella a la mitad
    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(Icons.star_half, color: Colors.yellow),
    );
//variable que tiene la descripcion

    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(descriptionPlace,
          style: TextStyle(
              fontFamily:"Lato",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF56575a)),
          textAlign: TextAlign.left),
    );
    //variable de las estrellas que estan en un row
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(Icons.star, color: Colors.yellow),
    );
    //variable que encapsula el titulo mas las estrellas
    final title_starts = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            star_border,
          ],
        )
      ],
    );
    return Column(
      children: <Widget>[title_starts, description],
    );
  }
}
