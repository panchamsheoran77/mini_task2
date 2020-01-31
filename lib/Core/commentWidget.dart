import 'package:flutter/material.dart';
import 'package:mini_task2/Core/threeDotWidget.dart';
import 'package:mini_task2/Core/userInfoBar.dart';
import 'package:mini_task2/Core/values.dart';

class commentWidget extends StatelessWidget {
  userInfoBar _userInfo;
  String _commentText;
  commentWidget(this._userInfo, this._commentText);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(values.commentWidgetMargin),
          child: Stack(
            children: <Widget>[
              _userInfo,
              Positioned(
                right: -8,
                bottom: 5,
                child: threeDotWidget(
                  values.commentCardBack,
                  values.CommentthreeDotColor,
                  values.threeDotSize,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Text(_commentText),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: values.commentOptionsHeight,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: values.commentOptionPositionLeft,
                child: Icon(
                  values.likeImageIcon,
                  color: values.likeCommentColor,
                ),
              ),
              Positioned(
                left: values.commentOptionPositionLeft+30,
                bottom: 10,
                child: Container(
                  child: Text(
                    "Like",
                    style: TextStyle(color: values.likeCommentColor),
                  ),
                ),
              ),
              Positioned(
                left: values.commentOptionPositionLeft+100,
                child: ImageIcon(
                  AssetImage(values.CommentimageIcon),
                  color: values.likeCommentColor,
                ),
              ),
              Positioned(
                left: values.commentOptionPositionLeft+130,
                bottom: 8,
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "Comment",
                    style: TextStyle(
                      color: values.likeCommentColor,
                      fontSize: values.commentFontSize,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
