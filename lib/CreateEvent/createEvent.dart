import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_task2/Core/roundButtonWidget.dart';
import 'package:mini_task2/Core/roundTextFieldWidget.dart';
import 'package:mini_task2/Core/values.dart';

class createEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Create Event",
            style: TextStyle(
              fontFamily: values.screenHeadingFontFamily,
              fontSize: values.screenHeadingSize,
              color: values.ScreenHeadingColor,
            ),
          ),
          elevation: 0,
          backgroundColor: values.mainBackColor,
        ),
        backgroundColor: values.mainBackColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image(
                  image: AssetImage("images/drive.png"),
                  width: values.imageWidth,
                  height: values.imageHeigth,
                  color: values.grey),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Event Name",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textFieldHeight,
                margin: EdgeInsets.all(10),
                child: roundTextFieldWidget("Ex. pratice of vollyball",1),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        width: values.dateTextFieldWidth,
                        child: Text(
                          "From",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: values.dateTextFieldWidth+10,
                            height: values.textFieldHeight,
                            margin: EdgeInsets.all(10),
                            child: roundTextFieldWidget("DD/MM/YY",1),
                          ),
                          Positioned(
                            bottom: 11,
                            right: -10,
                            child: RaisedButton(
                              elevation: 0,
                              color: Colors.transparent,
                              child: ImageIcon(
                                AssetImage("images/date_cal.png"),
                                size: values.labelIconSize,
                                color: values.grey,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        width: values.dateTextFieldWidth+10,
                        child: Text(
                          "To",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: values.dateTextFieldWidth,
                            height: values.textFieldHeight,
                            margin: EdgeInsets.all(10),
                            child: roundTextFieldWidget("DD/MM/YY",1),
                          ),
                          Positioned(
                            bottom: 11,
                            right: -10,
                            child: RaisedButton(
                              elevation: 0,
                              color: Colors.transparent,
                              child: ImageIcon(
                                AssetImage("images/date_cal.png"),
                                size: values.labelIconSize,
                                color: values.grey,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Location",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textFieldHeight,
                margin: EdgeInsets.all(10),
                child: roundTextFieldWidget("Ex. Canada",1),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Event Type",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textFieldHeight,
                margin: EdgeInsets.all(10),
                child: roundTextFieldWidget(
                    "Ex. Pratice, Physical training, tournament",1),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: double.maxFinite,
                child: Text(
                  "Description",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: values.textAreaHeight,
                margin: EdgeInsets.all(10),
                child: roundTextFieldWidget("Add Description", 50)
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: ImageIcon(
                      AssetImage("images/circle_add.png"),
                      size: values.labelIconSize,
                      color: values.inviteMemberColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Invite member",
                      style: TextStyle(
                        color: values.inviteMemberColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: values.buttonHeight,
                    margin: EdgeInsets.only(top: 20, right: 10, bottom: 10),
                    child: roundButtonWidget(
                      "Cancel",
                      values.white,
                      values.grey,
                      values.grey,
                      () {},
                    ),
                  ),
                  Container(
                      height: values.buttonHeight,
                      margin: EdgeInsets.only(top: 20, right: 10, bottom: 10),
                      child: roundButtonWidget(
                        "Save",
                        values.saveButtonBAckColor,
                        values.saveButtonBAckColor,
                        values.saveButtonFontColor,
                        () {},
                      )),
                ],
              )
            ],
          ),
        ),
      );
  }
}
