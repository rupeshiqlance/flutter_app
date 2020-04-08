
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/DataModal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/util/Util.dart';
import 'package:toast/toast.dart';
// ignore: must_be_immutable
class HomeActivity extends StatelessWidget{
  final DataModal  todo;
  var mUtil = Util();
  final emailcontrollar = TextEditingController();
  final passwordcontrollar = TextEditingController();
  String mstrEmail,strPassword;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  HomeActivity({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi ! "),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(todo.strEmail),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(todo.strPassword),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white,
            child: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextFormField(
                          controller: emailcontrollar,
                        decoration: InputDecoration(
                              labelText: 'Enter Email',
                              fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      width: 1.0,
                                      style: BorderStyle.solid
                                    )
                            )
                        ),
                        validator: (val){
                          if(val.length == 0){
                            return "Please Enter Email";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: passwordcontrollar,
                        decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key),
                            labelText: 'Enter Password',
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                    width: 1.0,
                                    style: BorderStyle.solid
                                )
                            )
                        ),

                        validator: (val){
                          if(val.length == 0){
                            return "Please Enter Password";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          fontFamily: "Poppins",
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
                              mUtil.ShowToast(passwordcontrollar.text+"<------->"+emailcontrollar.text,context);
                            },
                            child: Text("Login",textAlign: TextAlign.center,
                              style: style.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}