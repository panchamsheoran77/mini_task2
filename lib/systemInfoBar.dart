import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class systemInfoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      height: 40,
      width: double.maxFinite,
      child: Container(
        color: Color(0xffffffff),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, right: 80),
              child: Icon(
                FontAwesomeIcons.signal,
                size: 15,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 80),
              child: Material(
                color: Color(0xffffffff),
                child: Text(
                  "12:11",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Muli",
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                FontAwesomeIcons.wifi,
                size: 15,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(
                FontAwesomeIcons.batteryThreeQuarters,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
