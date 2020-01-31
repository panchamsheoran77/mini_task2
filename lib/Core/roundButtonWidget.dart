import 'package:flutter/material.dart';
import 'package:mini_task2/Core/values.dart';

class roundButtonWidget extends StatelessWidget{
  String _text ;
  Color _backColor;
  Color _borderColor;
  Function _function;
  Color _fontColor;
  roundButtonWidget(this._text,this._backColor,this._borderColor,this._fontColor,this._function);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        _text,
        style: TextStyle(
          color: _fontColor,
          fontSize: values.roundbuttonWidgetFontSize,
          fontFamily: values.fontFamily,
        ),
      ),
      color: _backColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(values.buttonCornerRadius),
        side: BorderSide(
          color:_borderColor,
          width: values.buttonBorderWidth,
        ),
      ),
      onPressed: _function,
    );
  }

}