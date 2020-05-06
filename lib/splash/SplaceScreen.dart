
import 'dart:async';
import 'dart:developer';
import 'package:flutter_app/loginApi/LoginFoodHippoActivity.dart';
import 'package:flutter_app/splash/contract/login_activity_contract.dart';
import 'package:flutter_app/splash/apimodal/CommonResponse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/splash/presenter/GetAPIKeyPresenter.dart';
import 'package:flutter_app/util/Util.dart';

import 'apimodal/KeydateResponse.dart';

class SplaceScreen extends StatefulWidget{

 @override
 _SplashState createState() => _SplashState();
}
class _SplashState extends State<SplaceScreen> implements LoginActivityView{

  var _visible = true;
  AnimationController animationController;
  Animation<double> animation;
  var mUtil = Util();
  GetAPIKeyPresenter _screenPresenter;
  String key ="335a559c51b88b4752b8325980abb3c14e1c4e61";
  @override
  void initState(){
    super.initState();
    _screenPresenter = GetAPIKeyPresenter(this);
    _screenPresenter.getAPIKeyDetail(key);

   /*Timer(
      Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                LoginFoodHippoActivity())));*/
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
                            width:  250,
                            height: 250,
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

  @override
  void finish() {
    log("finish-->");
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                LoginFoodHippoActivity())));
  }
  @override
  void omMessage(String message) {
    mUtil.ShowToast(message, context);
  }
  @override
  void omResponseSuccess(KeydateResponse response) {
    print("Key---->"+response.apiKey);
  }

  @override
  void omResponseFail(String response) {
    print("OnFails---->"+response);
  }
}