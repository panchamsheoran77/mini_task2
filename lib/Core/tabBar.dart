import 'package:flutter/material.dart';
import 'package:mini_task2/Core/values.dart';

class tabBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(values.preferredSizeHeight);

  @override
  Widget get child => Align(
        alignment: values.preferredSizeAlignment,
        child: Container(
          margin: EdgeInsets.only(
            left: values.tabMarginLeft,
          ),
          child: TabBar(
            labelPadding: EdgeInsets.symmetric(
              horizontal: values.tabLabelPadding,
            ),
            isScrollable: values.tabBarIsScrollable,
            labelColor: values.tabLabelColor,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: values.tabUnderLineWidth,
                color: values.tabIndicatorColor,
              ),
            ),
            tabs: <Widget>[
              Container(
                width: values.tabWidth,
                child: Tab(
                  child: Text(
                    values.tab1Text,
                    style: TextStyle(
                      fontSize: values.tabFontSize,
                      fontFamily: values.fontFamily,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: values.tabWidth + 15,
                child: Tab(
                  child: Text(
                    values.tab2Text,
                    style: TextStyle(
                      fontSize: values.tabFontSize,
                      fontFamily: values.fontFamily,
                    ),
                  ),
                ),
              ),
              Container(
                width: values.tabWidth,
                child: Tab(
                  child: Text(
                    values.tab3Text,
                    style: TextStyle(
                      fontSize: values.tabFontSize,
                      fontFamily: values.fontFamily,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
