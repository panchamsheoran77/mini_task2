import 'package:flutter/material.dart';
import 'package:mini_task2/Core/bottomNavBar.dart';
import 'package:mini_task2/Core/tabBar.dart';
import 'package:mini_task2/Core/values.dart';
import 'package:mini_task2/CreateEvent/createEvent.dart';
import 'package:mini_task2/EventDetails/eventDetails.dart';
import 'package:mini_task2/HamburgerMenu/hamburgerMenu.dart';
import 'package:mini_task2/todayTab.dart';
import 'package:mini_task2/Core/headingBar.dart';

void main() => runApp(MaterialApp(home: app()));

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: values.tabBarLength,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            todayTab(),
            Text(
              "3",
              style: TextStyle(color: values.black),
            ),
            Text(
              "2",
              style: TextStyle(color: values.black),
            ),
          ],
        ),
        backgroundColor: values.mainBackColor,
        appBar: AppBar(
            iconTheme: IconThemeData(color: values.black),
            title: headingBar(),
            elevation: 0,
            backgroundColor: values.mainBackColor,
            bottom: tabBar()),
        drawer: hamburgerMenu(),
        bottomNavigationBar: bottomNavBar(
          icn1Function: () {},
          icn2Function: () {},
          icn3Function: () {},
          icn4Function: () {},
          icn5Function: () {},
        ),
      ),
    );
  }
}
