import 'package:flutter/material.dart';
import 'package:mini_task2/Core/bottomNavBar.dart';
import 'package:mini_task2/Core/values.dart';
import 'package:mini_task2/HamburgerMenu/hamburgerMenu.dart';
import 'package:mini_task2/todayTab.dart';
import 'package:mini_task2/Core/headingBar.dart';

void main() => runApp(app());

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[
              todayTab(),
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
          backgroundColor: values.mainBackColor,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            title: headingBar(),
            elevation: 0,
            backgroundColor: values.mainBackColor,
            bottom: TabBar(
              isScrollable: true,
              labelColor: values.tabLabelColor,
              labelPadding: EdgeInsets.only(left: 0, right: 0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 2,
                  color: values.tabIndicatorColor,
                ),
                insets: EdgeInsets.only(
                  left: 0,
                  right: 8,
                  bottom: 4,
                ),
              ),
              tabs: <Widget>[
                Container(
                  width: 60,
                  child: Tab(
                    child: Text(
                      "Today's",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Muli",
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  child: Tab(
                    child: Text(
                      "Upcoming",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Muli",
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: Tab(
                    child: Text(
                      "Past",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Muli",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          drawer: hamburgerMenu(),

          bottomNavigationBar: bottomNavBar(
            icn1Function: () {},
            icn2Function: () {},
            icn3Function: () {},
            icn4Function: () {},
            icn5Function: () {},
          ),
        ),
      ),
    );
  }
}
