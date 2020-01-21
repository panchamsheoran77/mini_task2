import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_icons_icons.dart';

class todayTab extends StatelessWidget {
  List eventList = new List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          margin: EdgeInsets.all(10),
          color: Color(0xfff5f5f5),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/pic.jpg"),
                    ),
                    Text(
                      "WeyBASH 5th Annual Vollyball Tournament",
                      style: TextStyle(color: Colors.grey, fontSize: 20,fontFamily: "Muli",),
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
                      margin: EdgeInsets.only(left: 20,top: 10),
                      color: Color(0xff497300),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Icon(
                              CustomIcons.cancel_circled2,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Not Attending",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12,fontFamily: "Muli",),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Color(0xff80333333),
                      margin: EdgeInsets.only(left: 200),
                      child: ImageIcon(
                        AssetImage("images/dots.png"),
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 2,
    );
  }
}
