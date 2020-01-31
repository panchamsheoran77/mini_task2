import 'package:flutter/material.dart';
import 'package:mini_task2/Core/values.dart';

import 'bottomSheet.dart';

class threeDotWidget extends StatelessWidget{
  Color _backColor;
  Color _dotColor;
  double _size;
  threeDotWidget(this._backColor,this._dotColor,this._size);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      height: _size,
      width: _size,
      margin: EdgeInsets.only(left: 0),
      child: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          bottomSheet().settingModalBottomSheet(context);
        },
        mini: true,
        backgroundColor: _backColor,
        child: ImageIcon(
          AssetImage("images/dots.png"),
          size: values.threeDotSize,
          color: _dotColor,
        ),
      ),
    );
  }

}