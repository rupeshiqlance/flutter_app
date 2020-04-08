

import 'package:flutter/material.dart';

class SignUpActivity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignUp();
  }

}

class _SignUp extends State<SignUpActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mySignUpWidget(),
    );
  }

 Widget  mySignUpWidget() {
    return SafeArea(
      child: Container(

      ),
    );
 }
}