
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/DataModal.dart';
import 'package:flutter_app/util/Util.dart';
import 'package:toast/toast.dart';
import 'package:flutter_app/HomeActivity.dart';

// ignore: must_be_immutable
class LoginActivity extends StatefulWidget {
  String title;
  LoginActivity({Key key, this.title }) : super(key: key){
    this.title = title;
  }
   @override
  _LoginActivityState createState() => _LoginActivityState();
}
class _LoginActivityState extends State<LoginActivity>{
  final emailcontrollar = TextEditingController();
  final passwordcontrollar = TextEditingController();
  var mUtil = Util();
  final mModal = DataModal();
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  void dispose() {
    emailcontrollar.dispose();
    passwordcontrollar.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),*/
      body: _makeWidget(context)
    );
  }
  bool isValid() {
    if(emailcontrollar.text.isEmpty){
      mUtil.ShowToast("Enter Valid Email",context);
      //Toast.show("Enter Valid Email", , duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return false;
    }else if(passwordcontrollar.text.isEmpty){
      mUtil.ShowToast("Enter Password",context);
      //Toast.show("Enter Password", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return false;
    }else{
      return true;
    }
  }
  Widget _makeWidget(BuildContext context) {
    return SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: emailcontrollar,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Email",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(Icons.email,color: Colors.grey), // icon is 48px widget.
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller: passwordcontrollar,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Password",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ), // icon is 48px widget.
                      ),
                    ),
                  ),

                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(36.0),
                      color: Colors.blue,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                        onPressed: (){
                          if(isValid()){
                            mModal.strEmail = emailcontrollar.text;
                            mModal.strPassword = passwordcontrollar.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeActivity(todo: mModal),
                              ),
                            );
                          }
                        },
                        child: Text("Login",textAlign: TextAlign.center,
                          style: style.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Material(
                    child: Text("OR",textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(36.0),
                            color: Colors.blue,
                            child: MaterialButton(

                              child: Text("Facebook",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              onPressed: () {
                                Toast.show("Facebook", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                              },
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(36.0),
                            color: Colors.blue,
                            child: FlatButton(
                              child: Text("Google",textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              onPressed: () {
                                Toast.show("Google", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                signUpTextRow()
              ],
            ),
          ),
      /*child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: emailcontrollar,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Email",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Icon(Icons.email,color: Colors.grey), // icon is 48px widget.
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              controller: passwordcontrollar,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ), // icon is 48px widget.
                ),
              ),
            ),

          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(36.0),
                color: Colors.blue,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                  onPressed: (){
                    if(isValid()){
                      mModal.strEmail = emailcontrollar.text;
                      mModal.strPassword = passwordcontrollar.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeActivity(todo: mModal),
                        ),
                      );
                    }
                  },
                  child: Text("Login",textAlign: TextAlign.center,
                    style: style.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              child: Text("OR",textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                ),
              ),

            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(36.0),
                      color: Colors.blue,
                      child: MaterialButton(

                        child: Text("Facebook",textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {
                          Toast.show("Facebook", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                        },
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(36.0),
                      color: Colors.blue,
                      child: FlatButton(
                        child: Text("Google",textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {
                          Toast.show("Google", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                        },
                      ),
                    ),
                  ),
                ],
              )
          )
        ],
      ),*/
      /*child: SingleChildScrollView(

      ),*/
        /*child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
            Padding(
            padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: emailcontrollar,
                decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(3.0)),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Email",
                  prefixIcon: Padding(
                     padding: EdgeInsets.all(0.0),
                    child: Icon(Icons.email,color: Colors.grey), // icon is 48px widget.
              ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: passwordcontrollar,
                decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ), // icon is 48px widget.
                ),
              ),
            ),

          ),
            Padding(
              padding: const EdgeInsets.all(16.0),
               child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(36.0),
                  color: Colors.blue,
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                    onPressed: (){
                      if(isValid()){
                        mModal.strEmail = emailcontrollar.text;
                        mModal.strPassword = passwordcontrollar.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeActivity(todo: mModal),
                          ),
                        );
                      }
                    },
                    child: Text("Login",textAlign: TextAlign.center,
                      style: style.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                child: Text("OR",textAlign: TextAlign.center,
                style: TextStyle(
                      fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                  ),
                ),

              ),
            ),
            Padding(
               padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                   flex: 1,
                   child: Material(
                     elevation: 5.0,
                     borderRadius: BorderRadius.circular(36.0),
                     color: Colors.blue,
                      child: MaterialButton(

                        child: Text("Facebook",textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {
                          Toast.show("Facebook", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                        },
                      ),
                   ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(36.0),
                      color: Colors.blue,
                      child: FlatButton(
                        child: Text("Google",textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        onPressed: () {
                          Toast.show("Google", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                        },
                      ),
                    ),
                  ),
                ],
              )
            )
        ],
      )*/
    );
  }
  Widget signUpTextRow() {
    return Container(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                print("Routing to Sign up screen");
              },
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontWeight: FontWeight.w800, color: Colors.orange[200]),
              ),
            )
          ],
        )
        ),
    );
  }
}

