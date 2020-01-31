import 'package:flutter/material.dart';
import 'package:mini_task2/Core/threeDotWidget.dart';
import 'package:mini_task2/Core/values.dart';
import 'Core/status.dart';

class todayTab extends StatefulWidget {
  List eventList = new List();

  @override
  State<StatefulWidget> createState() {
    return new _todaysTab();
  }
}

class _todaysTab extends State<todayTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Container(
          height: values.postHeight,
          width: values.postWidth,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(values.tabCardRadius)),
            margin: EdgeInsets.all(values.tabCardMargin),
            color: values.tabCardBackColor,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(values.tabCardMargin - 2),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(values.tabCardRadius),
                        child: Image.asset(
                          "images/pic.jpg",
                          fit: BoxFit.fitWidth,
                          height: values.postImageHeight,
                          width: values.postImageWidth,
                        ),
                      ),
                      Text(
                        "WeyBASH 5th Annual Vollyball Tournament",
                        style: TextStyle(
                          color: values.postCaptionColor,
                          fontSize: values.postFontSize,
                          fontFamily: values.postFontFamily,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  width: values.postImageWidth - 25,
                  top: 10,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: values.postStatusBackColor,
                            border:
                                Border.all(color: values.postStatusBackColor),
                            borderRadius: BorderRadius.circular(
                                values.postStatusCornerRadius)),
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: status(
                          "images/cancel.png",
                          "Not Attending",
                          values.postStatusBackColor,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: threeDotWidget(
                          values.threeDotBackColor,
                          values.threeDotsColor,
                          values.threeDotSize+5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 2,
    );
  }
}
