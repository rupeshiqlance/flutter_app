import 'package:flutter/material.dart';
import 'package:flutter_app/loginform/LoginActivity.dart';
import 'package:flutter_app/loginform/LoginActivityOne.dart';
import 'package:toast/toast.dart';

import 'ListItemModal.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  String title;

  Home({Key key, this.title}) : super(key: key) {
    this.title = title;
  }

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var items = List<ListItemModal>();

  @override
  void initState() {
    super.initState();
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
    items.add(ListItemModal("Login Form Normal"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget List'),
        ),
        body: _listView(context));
  }

  Widget _listView(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Card(
          color: (index % 2 == 0) ? Colors.lightBlue : Colors.green,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/flutter.png'),
            ),
            title: Text(items[index].item,
            style: TextStyle(
              color: Colors.white,
            ),),
            trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                listClick(index);
              },
          ),
        );
      },
    );
  }

  listClick(int index) {
    if(index == 0){
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => LoginActivity(title: 'Login Form Normal')));
    }else if(index == 1){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginActivityOne()));
    }
  }
  /*Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginActivity(title: 'Login Form Normal'),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.infinite;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }*/
}
