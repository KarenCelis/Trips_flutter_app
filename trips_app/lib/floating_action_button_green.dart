import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  FloatingActionButtonGreen({Key key}) : super(key: key);

  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _pressed = false;
  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
    Scaffold.of(context).showSnackBar(SnackBar(
      content: this._pressed
          ? Text("Agregado a mis favoritos")
          : Text("Quitado de  mis favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      //si alguien se posiciona con el mouse encima
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}
