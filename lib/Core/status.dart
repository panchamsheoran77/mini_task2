import 'package:flutter/material.dart';
import 'package:mini_task2/Core/values.dart';

class status extends StatelessWidget {
  String _image;
  String _text;
  Color _color;
  status(this._image, this._text,this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: values.statusHeight,
      width: values.statusWidth,
      decoration: BoxDecoration(
          color: _color,
          border: Border.all(color: _color),
          borderRadius: BorderRadius.circular(values.statusCornerRadius)),
      margin: EdgeInsets.only(left: 0, top: 0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: values.statusIconMargin),
            child: ImageIcon(
              AssetImage(_image),
              size: values.statusIconSize,
              color: values.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              _text,
              style: TextStyle(
                color: values.postStatusTextColor,
                fontSize: values.postStatusTextSize,
                fontFamily: values.postStatusFontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
