import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("lib/assets/images/people.jpg", "Antu", "2 ww",
            "Muy bueno con arroz blanco"),
        Review("lib/assets/images/descarga.jpg", "Antu", "2 ww",
            "Muy bueno con arroz blanco"),
        Review("lib/assets/images/images.jpg", "Antu", "2 ww",
            "Muy bueno con arroz blanco"),
      ],
    );
  }
}
