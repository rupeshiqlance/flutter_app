
import 'package:flutter_app/loginform/LoginActivity.dart';
import 'dart:async';
import 'package:flutter_app/util/Util.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/home/Home.dart';

class SplaceScreen extends StatefulWidget{

 @override
 _SplashState createState() => _SplashState();
}
class _SplashState extends State<SplaceScreen>  with SingleTickerProviderStateMixin{

  var _visible = true;
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState(){
    super.initState();
    animationController = new AnimationController(vsync: this, duration: new Duration(seconds: 2));
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => this.setState(() {}));
    animationController.forward();
    setState(() {
      _visible = !_visible;
    });
   Timer(
      Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>

                Home(title: 'Flutter Widget List'))));
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow:[
                          BoxShadow(
                              color: Color.fromARGB(60, 0, 0, 0),
                              blurRadius: 5.0,
                              offset: Offset(5.0, 5.0)

                          )
                        ],

                      ),
                    child: ClipOval(
                          child: Image.asset('flutter_one.png',fit: BoxFit.cover,
                            width: animation.value * 250,
                            height: animation.value * 250,
                          ),
                        )
                     ),
                    Center(
                      child: Padding(
                        child: Text("Welcome to Flutter",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dotted,
                              fontWeight: FontWeight.bold),
                        ), padding: EdgeInsets.all(36.0),
                      ),
                    ),
                  ],
                )
      ),
    );
  }
}