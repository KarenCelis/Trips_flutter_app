import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips_app/Profile/profile_trips.dart';
import 'package:trips_app/home_trips.dart';

import 'package:trips_app/search_trips.dart';

class TripsCupertino extends StatelessWidget {
  const TripsCupertino({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          //Con blur de en color
          //transparencia del bottom navigator
          backgroundColor: Colors.white30,
          //color de los botones inactivos
          inactiveColor: Colors.blueGrey,
          //color de los colores activos
          activeColor: Colors.indigo,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: ""),
          ]),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => SearchTrips(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => ProfileTrips(),
            );
            break;
        }
      },
    ));
  }
}
