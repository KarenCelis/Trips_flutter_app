import 'package:flutter/material.dart';
import 'package:trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
          ListView(
            children: [
              DescriptionPlace("Bahamas", 4 , "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              ReviewList(),
            ],
          ),
          HeaderAppBar()
        ],);
  }
}