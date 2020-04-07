import 'package:flutter/material.dart';
import 'package:flutter_app/loginform/LoginActivity.dart';
import 'package:flutter_app/widget/EmptyCard.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_app/loginform/VerticleCustomeListItemRowActivity.dart';
import '../modal/ListItemModal.dart';

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
    items.add(ListItemModal("Login Form One"));
    items.add(ListItemModal("Custom Item Row"));
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
    /*return AutoRefresh(
        duration: const Duration(milliseconds: 2000),
        child: Scaffold(
            body: SafeArea(
                child: AnimationLimiter(
                  child: items.isEmpty ? Center(child: Text('No record founds')) :ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(
                              child: Card(
                                color: (index % 2 == 0)
                                    ? Colors.lightBlue
                                    : Colors.green,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/flutter.png'),
                                  ),
                                  title: Text(items[index].item,
                                    style: TextStyle(
                                      color: Colors.white,),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_right),
                                  onTap: () {
                                    listClick(index);
                                  },
                                ),
                              )
                          ),
                        ),
                      );
                    },
                  ),
                 *//* child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: FadeInAnimation(

                             child: Card(
                                color: (index % 2 == 0)
                                    ? Colors.lightBlue
                                    : Colors.green,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/flutter.png'),
                                  ),
                                  title: Text(items[index].item,
                                    style: TextStyle(
                                      color: Colors.white,),
                                  ),
                                  trailing: Icon(Icons.keyboard_arrow_right),
                                  onTap: () {
                                    listClick(index);
                                  },
                                ),
                              )
                          ),
                        ),
                      );
                    },
                  ),*//*
                )
            )
        ));*/
    return AnimationLimiter(
      child: items.isEmpty ? Center(child: EmptyCard()) :ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                    child: Card(
                      color: (index % 2 == 0) ? Colors.lightBlue : Colors.green,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/flutter_one.png'),
                        ),
                        title: Text(items[index].item,
                          style: TextStyle(
                            color: Colors.white,),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        subtitle: Text("Testing..",style: TextStyle(
                          color: Colors.amberAccent
                        ),),
                        onTap: () {
                          listClick(index);
                        },
                      ),
                    )
                ),
              ),
          );
        },
      ),
    );
  }
  listClick(int index) {
    if(index == 0){
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => LoginActivity(title: 'Login Form Normal')));
    }else if(index == 1){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginActivity()));
    }else if(index == 2){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => VerticleCustomeListItemRowActivity()));
    }
  }
}
