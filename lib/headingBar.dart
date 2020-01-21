import 'package:flutter/material.dart';

class headingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      child: Container(
        color: Color(0xffffffff),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10,bottom: 7),
                child: Material(
                  color: Color(0xffffffff),
                  child:  Text(
                "Event",
                style: TextStyle(
                  color: Color(0xff555555),
                  fontSize: 48,
                  fontFamily: "Muli",
                ),
              ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 7, left: 100),
              child: RaisedButton(
                child: Text(
                  "Create",
                  style: TextStyle(
                    color: Color(0xfff01b01),
                    fontSize: 18,
                    fontFamily: "Muli",
                  ),
                ),
                color: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    color: Color(0xfff01b01),
                    width: 1.0,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
