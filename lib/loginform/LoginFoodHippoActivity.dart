import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/util/Util.dart';

class LoginFoodHippoActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(home: _MyLoginForm()),
    );
  }
}

class _MyLoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return _MyLogin();
  }
}

class _MyLogin extends State<_MyLoginForm> {
  final emailcontrollar = TextEditingController();
  final passwordcontrollar = TextEditingController();
  bool passwordVisible = true;
  var mUtil = Util();

  @override
  void initState() {
    super.initState();
   /* emailcontrollar.dispose();
    passwordcontrollar.dispose();*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: _myLoginWidget(),
    );
  }

  Widget _myLoginWidget() {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/login_bg.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  _widgetSingIn(),
                  _widgetSingInSocilaTitle(),
                  _widgetSingInSocilaButtonSizeBox(),
                  _widgetSingInConnectWithSizeBox(),
                  _widgetSingInLoginFiedSizeBox(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              child: _widgetSingInSignUpSizeBox(),
            ),
          )
        ],
      ),
    );
  }

  Widget _widgetSingIn() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Signin',
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Color.fromARGB(500, 14, 34, 83),
            fontSize: 35,
            fontFamily: 'VisbyRoundCF',
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }

  Widget _widgetSingInSocilaTitle() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'With your Social Network',
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Color.fromARGB(100, 14, 34, 83),
            fontSize: 16,
            fontFamily: 'VisbyRoundCF',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }

  Widget _widgetSingInSocilaButtonSizeBox() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SizedBox(
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      color: Colors.indigo,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/ic_facebook.png',
                            width: 20,
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Facebook',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'VisbyRoundCF',
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: SizedBox(
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      color: Colors.deepOrange,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/ic_google.png',
                            width: 20,
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Google',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'VisbyRoundCF',
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _widgetSingInConnectWithSizeBox() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/or.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width - 25,
                height: MediaQuery.of(context).size.height)
          ],
        ),
      ),
    );
  }

  Widget _widgetSingInLoginFiedSizeBox() {
    return Container(
      child: Form(
        child: Column(
          children: <Widget>[
            mobileNumberWidget(),
            mobilePasswordWidget(),
            _widgetForgotPassword(),
            _widgetSigninButton(),
          ],
        ),
      ),
    );
  }

  Widget mobileNumberWidget() {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: emailcontrollar,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.0),
            borderSide: const BorderSide(color: Colors.red, width: 0.50)),
        hintStyle: TextStyle(color: Colors.grey),
        hintText: "Mobile Number",
        suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Image.asset(
              'assets/ic_mobile.png',
              fit: BoxFit.scaleDown,
              height: 8,
              width: 5,
            ) // icon is 48px widget.
            ),
      ),
    );
  }

  Widget mobilePasswordWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        controller: passwordcontrollar,
        obscureText: passwordVisible,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 10.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.0),
              borderSide: const BorderSide(color: Colors.red, width: 0.50)),
          hintStyle: TextStyle(color: Colors.grey),
          hintText: "Password",
          suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
                child: Image.asset(
                  'assets/ic_eye.png',
                  fit: BoxFit.scaleDown,
                  height: 10,
                  width: 10,
                ),
              ) // icon is 48px widget.
              ),
        ),
      ),
    );
  }

  Widget _widgetForgotPassword() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(
          'Forgot Password?',
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Color.fromARGB(100, 14, 34, 83),
            fontSize: 16,
            fontFamily: 'VisbyRoundCF',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _widgetSigninButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: GestureDetector(
        onTap: () {
          if (isValid()) {}
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              gradient: new LinearGradient(
                colors: [
                  Color.fromARGB(500, 255, 59, 128),
                  Color.fromARGB(255, 251, 151, 111)
                ],
              )),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "SIGN IN",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'VisbyRoundCF',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),

            ),
          ),
        ),

    );
  }

  Widget _widgetSingInSignUpSizeBox() {
    return Container(
        child: Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(500, 14, 34, 83),
                fontFamily: 'VisbyRoundCF',
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Sign Up",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(500, 255, 59, 128),
                    fontFamily: 'VisbyRoundCF',
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  bool isValid() {
    if (emailcontrollar.text.isEmpty) {
      mUtil.ShowToast("Enter Mobile number", context);
      //Toast.show("Enter Valid Email", , duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return false;
    } else if (passwordcontrollar.text.isEmpty) {
      mUtil.ShowToast("Enter Password", context);
      //Toast.show("Enter Password", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return false;
    } else {
      return true;
    }
  }
}
