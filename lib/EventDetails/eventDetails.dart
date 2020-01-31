import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mini_task2/Core/commentWidget.dart';
import 'package:mini_task2/Core/status.dart';
import 'package:mini_task2/Core/threeDotWidget.dart';
import 'package:mini_task2/Core/userInfoBar.dart';
import 'package:mini_task2/Core/values.dart';

class eventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/eventPic.jpg",
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          status(
                            "images/cancel.png",
                            "Not Attending",
                            values.statusBackColor,
                          ),
                          threeDotWidget(
                            values.black,
                            values.threeDotsColor,
                            values.threeDotSize,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(values.dateContainerRadius),
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 2,
                          bottom: 5,
                          right: 3,
                        ),
                        width: 65,
                        height: 65,
                        color: values.statusBackColor,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "13",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: values.dateTextColor),
                            ),
                            Text(
                              "Dec,2019",
                              style: TextStyle(color: values.dateTextColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "2019 Holiday 4's Beach Volleyball Tournament",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: values.eventHeadingFontSize,
                      color: values.eventHeadingFontColor,
                      wordSpacing: 2.5),
                ),
              ),
              userInfoBar(
                  "Dan Walker (Host)",
                  "Coach,Consulant(University of Calgary)",
                  values.avatarPic,
                  250,
                  values.eventCreaterNameFontSize),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Lorem Ipsum is simply dummy "
                        "text of the printing and typesetting industry. "
                        "Lorem Ipsum has been the industry's standard dummy text "
                        "ever since the 1500s, when an unknown printer took a galley "
                        "of type and scrambled it to make world",
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                    Positioned(
                      right: 80,
                      bottom: 0,
                      child: Text(
                        "View More",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: values.viewMoreTextColor,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: values.dateDirectionIconBackColor,
                    ),
                    margin: EdgeInsets.only(left: 10),
                    child: ImageIcon(
                      AssetImage(values.dateIcon),
                      size: values.dateIconSize,
                      color: values.threeDotsColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("Dec 13, 2019 to Dec 15,2019"),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: values.dateDirectionIconBackColor,
                    ),
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: ImageIcon(
                      AssetImage(values.navIcon),
                      size: values.dateIconSize,
                      color: values.threeDotsColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Dallas Market Center, Dallas, USA",
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Get Directions",
                      style: TextStyle(
                          color: values.getDirectionsTextColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Card(
                elevation: 0,
                color: values.commentCardBack,
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: <Widget>[
                          userInfoBar(
                              "Me",
                              "Coach,Consultant(University of Calgary)",
                              values.avatarPic,
                              250,
                              values.eventCreaterNameFontSize),
                          Positioned(
                            right: -8,
                            bottom: 5,
                            child: threeDotWidget(
                              values.commentCardBack,
                              values.CommentthreeDotColor,
                              values.threeDotSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                          hintText: "Enter your comment here ...",
                          hintStyle: TextStyle(color: Colors.black54),
                        ),
                        maxLines: 35,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: values.postCommentButtonColor,
                        child: Text(
                          "POST",
                          style: TextStyle(color: Colors.white),
                        ),
                        elevation: 0,
                        onPressed: () {},
                        padding: EdgeInsets.all(5),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        "Comments",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    commentWidget(
                      userInfoBar(
                        "Me",
                        "Coach, Consultant(University of Calgary)",
                        values.avatarPic,
                        values.userInfoBarWidth,
                        values.eventCreaterNameFontSize,
                      ),
                      "Lorem Ipsum is simply dummy "
                      "text of the printing and typesetting industry. ",
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: commentWidget(
                        userInfoBar(
                          "Me",
                          "Coach,(University of Calgary)",
                          values.avatarPic,
                          values.userInfoBarWidth - 40,
                          values.eventCreaterNameFontSize,
                        ),
                        "Lorem Ipsum is simply dummy "
                        "text of the printing and typesetting industry.",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: values.eventdetailbackgroundColor,
      );
  }
}
