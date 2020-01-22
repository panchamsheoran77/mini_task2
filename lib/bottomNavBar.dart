import 'package:flutter/material.dart';

class bottomNavBar extends StatelessWidget{
  Function _icn1,_icn2,_icn3,_icn4,_icn5;

  bottomNavBar({@required Function icn1Function,@required Function icn2Function,@required Function icn3Function,@required Function icn4Function,@required Function icn5Function,}){
    _icn1 = icn1Function;
    _icn2 = icn2Function;
    _icn3 = icn3Function;
    _icn4 = icn4Function;
    _icn5 = icn5Function;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child:Stack(
        overflow: Overflow.visible,
        alignment: new FractionalOffset(.5, 1.0),
        children: [
          Positioned(
            left: 0,
            bottom:5 ,
            child: RaisedButton(
              onPressed: _icn1,
              elevation: 0,
              color: Colors.transparent,
              child: ImageIcon(
              AssetImage("images/wifi.png"),
              size: 27,
              color: Colors.grey,
            ),
          ),
          ),
          Positioned(
            left: 60,
            bottom:5 ,
            child: RaisedButton(
              onPressed: _icn2,
              elevation: 0,
              color: Colors.transparent,
              child: ImageIcon(
                AssetImage("images/share.png"),
                size: 27,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 140,
            bottom: 10,
            child: new FloatingActionButton(

//                        notchMargin: 24.0,
              backgroundColor: Colors.red,
              onPressed: _icn3,
              child: ImageIcon(
                AssetImage("images/circle_add.png"),
                size: 27,
              ),
            ),
          ),
          Positioned(
            left: 200,
            bottom:5 ,
            child: RaisedButton(
              onPressed: _icn4,
              elevation: 0,
              color: Colors.transparent,
              child: ImageIcon(
                AssetImage("images/calc_add.png"),
                size: 27,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 270,
            bottom:5 ,
            child: RaisedButton(
              onPressed: _icn5,
              elevation: 0,
              color: Colors.transparent,
              child: ImageIcon(
                AssetImage("images/group_icon.png"),
                size: 27,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

}