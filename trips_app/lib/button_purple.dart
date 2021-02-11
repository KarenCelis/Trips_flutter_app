import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "NAvigate";
  ButtonPurple(this.buttonText);
  @override
  Widget build(BuildContext context) {
    //widget inkwell untipo de widget que permite que cualquier forma se poueda dar tap
    return InkWell(
        onTap: () {
          //muestra un snack bar abajop en la pantalla
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("nave"),
          ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          height: 50.0,
          width: 180.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                  colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                  begin: FractionalOffset(2.0, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  fontSize: 18.0, fontFamily: "Lato", color: Colors.white),
            ),
          ),
        ));
  }
}
