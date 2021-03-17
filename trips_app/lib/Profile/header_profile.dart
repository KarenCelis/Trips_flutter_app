import 'package:flutter/material.dart';
import 'package:trips_app/Profile/card_profile.dart';
import 'package:trips_app/Profile/gradient_back_profile.dart';
import 'package:trips_app/card_image_list.dart';
import 'package:trips_app/gradient_back.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBackProfile("Profile"),
        Container(
            height: 350.0,
            margin: EdgeInsets.only(
              top: 100.0,
            ),
            child: ListView(
              children: [
                CardProfile(
                    "lib/assets/images/people.jpg", "Varuna Yasas", "sd@sd.com")
              ],
            )),
        Container(
            height: 350.0,
            margin: EdgeInsets.only(
              top: 60.0,
            ),
            child: _appBarActions())
      ],
    );
  }

  Widget _appBarActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _iconAction(
          Icon(Icons.turned_in_not),
          40.0,
          "Markers",
          goToMarkers,
        ),
        _iconAction(
          Icon(Icons.laptop_mac),
          40.0,
          "Publications",
          goToMarkers,
        ),
        _iconAction(
          Icon(Icons.add),
          60.0,
          "Add new",
          goToMarkers,
        ),
        _iconAction(
          Icon(Icons.email),
          40.0,
          "Send message",
          goToMarkers,
        ),
        _iconAction(
          Icon(Icons.person),
          40.0,
          "My profile",
          goToMarkers,
        ),
      ],
    );
  }

  Widget _iconAction(icon, iconSize, tooltip, action()) {
    return Container(
      width: iconSize,
      height: iconSize,
      child: IconButton(
          icon: icon,
          iconSize: iconSize * 0.5,
          tooltip: tooltip,
          color: Colors.deepPurple,
          splashColor: Colors.purple,
          onPressed: () {
            action();
          }),
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
  }

  void goToMarkers() {}
}
