import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mini_task2/bottomNavBar.dart';
import 'package:mini_task2/systemInfoBar.dart';
import 'package:mini_task2/todayTab.dart';
import 'package:mini_task2/headingBar.dart';

void main() => runApp(app());

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    // TODO: implement build
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: Stack(
        children: <Widget>[
          Positioned(
           top: 30,
            left: 0,
            right: 0,
            bottom: 10,
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                body: TabBarView(
                  children: <Widget>[
                   todayTab(),
//                    Text(
//                      "1",
//                      style: TextStyle(color: Colors.black, fontSize: 20),
//                    ),
                    Text(
                      "3",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "2",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                backgroundColor: Color(0xffffffff),
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Color(0xffffffff),
                  bottom: TabBar(
                    labelColor: Color(0xfff01b01),
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          "Today's",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Muli",
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Muli",
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Past",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Muli",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar:bottomNavBar(
                  icn1Function: (){},
                  icn2Function: (){},
                  icn3Function: (){},
                  icn4Function: (){},
                  icn5Function: (){},
                ),
              ),
            ),
          ),
          headingBar(),
          systemInfoBar(),
        ],
      ),
    );
  }
}
