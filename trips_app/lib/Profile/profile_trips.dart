import 'package:flutter/material.dart';
import 'package:trips_app/Profile/card_images_list.dart';
import 'package:trips_app/Profile/header_profile.dart';
import 'package:trips_app/card_image_list.dart';




class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
         HeaderProfile(),
      ListView(
        children: [
          
          CardImagesList()

        ],
      ),
      
    ],

    );
  }
}