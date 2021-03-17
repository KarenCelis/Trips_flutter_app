import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  String pathImage = "lib/assets/images/people.jpg";
  String name = "Varuna Yasas";
  String email = "sd@sd.com";
  CardProfile(this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {
    //variable de la informacion del usuario

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Colors.white60),
      ),
    );
//variable del nombre del usuario
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style:
            TextStyle(fontFamily: "Lato", fontSize: 17.0, color: Colors.white),
      ),
    );
//variable de los detalles del usuario
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo],
    );
    //varible de la foto
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        
        color: Colors.white,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );
    return Row(
      children: [photo, userDetails],
    );
  }
}
