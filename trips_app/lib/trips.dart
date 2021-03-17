import 'package:flutter/material.dart';
import 'package:trips_app/Profile/profile_trips.dart';
import 'package:trips_app/home_trips.dart';

import 'package:trips_app/search_trips.dart';

class Trips extends StatefulWidget {
  Trips({Key key}) : super(key: key);

  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
HomeTrips(),
SearchTrips(),
ProfileTrips()
  ]; 
  void onTapTapped(int index){

    setState(() {
      indexTap = index;
    });

    }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white30, primaryColor: Colors.purple),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
