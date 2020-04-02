import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/loginform/responsive_ui.dart';

class LoginActivityOne extends StatefulWidget {
  @override
  _LoginOne createState() => _LoginOne();
}

class _LoginOne extends State<LoginActivityOne> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery
        .of(context)
        .size
        .height;
    _width = MediaQuery
        .of(context)
        .size
        .width;
    _pixelRatio = MediaQuery
        .of(context)
        .devicePixelRatio;
    _large = ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    _medium = ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
        child: Container(
            height: _height,
            width: _width,
            child: Column(
            children: <Widget>[

            ],

            )
        )
    );
  }
}
