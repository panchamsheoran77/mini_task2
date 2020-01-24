import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class systemInfoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      height: 40,
      width: double.maxFinite,
      child: Container(
        color: Color(0xffffffff),
      ),
    );
  }
}
