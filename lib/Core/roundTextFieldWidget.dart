import 'package:flutter/material.dart';
import 'package:mini_task2/Core/values.dart';

class roundTextFieldWidget extends StatelessWidget{
  String _hint;
  int _maxLines;
  roundTextFieldWidget(this._hint,this._maxLines);
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: _maxLines,
      decoration: new InputDecoration(
        border: new OutlineInputBorder(
          borderRadius:  BorderRadius.all(
             Radius.circular(values.textFieldCornerRadius),
          ),
        ),

        hintStyle: new TextStyle(
          color: values.textHintColor,
          fontSize: values.hintFontSize,
        ),
        hintText: _hint,
      ),
    );
  }

}