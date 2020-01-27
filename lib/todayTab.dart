import 'package:flutter/material.dart';
import 'package:mini_task2/Core/values.dart';
import 'package:mini_task2/EventDetails/eventDetails.dart';

class todayTab extends StatelessWidget {
  List eventList = new List();


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
                  top: 10,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                            color: values.postStatusBackColor,
                            border:
                                Border.all(color: values.postStatusBackColor),
                            borderRadius: BorderRadius.circular(
                                values.postStatusCornerRadius)),
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: ImageIcon(
                                AssetImage("images/cancel.png"),
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Not Attending",
                                style: TextStyle(
                                  color: values.postStatusTextColor,
                                  fontSize: values.postStatusTextSize,
                                  fontFamily: values.postStatusFontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        margin: EdgeInsets.only(left: 140),
                        child: FloatingActionButton(
                          elevation: 0,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> eventDetails() ));
                          },
                          mini: true,
                          backgroundColor: values.threeDotBackColor,
                          child: ImageIcon(
                            AssetImage("images/dots.png"),
                            size: values.threeDotSize,
                            color: values.threeDotsColor,
                          ),
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
