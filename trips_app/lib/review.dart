import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "lib/assets/images/people.jpg";
  String name = "Varuna Yasas";
  Review (this.pathImage, this.name);
  @override
  Widget build(BuildContext context) {

//variable del nombre del usuario
final userName = Container(
  margin: EdgeInsets.only(
    left: 20.0
  ),
  child: Text(
    name,
  ),
);
//variable de los detalles del usuario
final userDetails = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
children: [


],
);
    //varible de la foto
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage) ),
      ),
    );
    return Row(
      children: [
        photo,
      ],
    );
  }
}
