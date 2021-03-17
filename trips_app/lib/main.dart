import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';
import 'package:trips_app/gradient_back.dart';
import 'package:trips_app/header_appbar.dart';
import 'package:trips_app/review_list.dart';
import 'package:trips_app/trips.dart';
import 'package:trips_app/trips_cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        //appBar: AppBar(title: Text("Hola mundo")),
        //body: new DescriptionPlace("Bahamas", 4 , "lsssss"),
        //body: ReviewList(),
        //es un stack porque son elementos sobrepuestos     
        body: TripsCupertino()

      ),

    );
  }
}

