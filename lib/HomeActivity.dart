import 'package:flutter_app/DataModal.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget{
  final DataModal  todo;
  HomeActivity({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          )
        ],
      )
    );
  }

}