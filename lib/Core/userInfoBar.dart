import 'package:flutter/material.dart';
import 'package:mini_task2/Core/values.dart';

class userInfoBar extends StatelessWidget
{
  String _user;
  String _userDesignation;
  String _userPic;
  double _width;
  double _fontSize;
  userInfoBar(this._user,this._userDesignation,this._userPic,this._width,this._fontSize);
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(values.userPicRadius),
            child: Image.asset(
              _userPic,
              width: values.userPicSize,
              height: values.userPicSize,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              children: <Widget>[
                Container(
                  width: _width,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _user,
                    style: TextStyle(
                      color: values.eventCreaterNameColor,
                      fontSize: _fontSize,
                    ),
                  ),
                ),
                Container(
                  width: _width,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _userDesignation,
                    style: TextStyle(
                      color: values.eventCreaterDesignationColor,
                      fontSize: _fontSize - 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}