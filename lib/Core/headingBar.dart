import 'package:flutter/material.dart';
import 'package:mini_task2/Core/roundButtonWidget.dart';
import 'package:mini_task2/Core/values.dart';

class headingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: values.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 0, bottom: 10, top: 10),
            child: Material(
              color: values.white,
              child: Text(
                "Event",
                style: TextStyle(
                  color: values.greyShade3,
                  fontSize: values.headingSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 7),
            child: roundButtonWidget(
              "Create",
              values.headingButtonBackColor,
              values.headingButtonBorderColor,
              values.headingButtonColor,
              () {},
            ),
          ),
        ],
      ),
    );
  }
}
