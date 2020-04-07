import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/home/ListItemModal.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class VerticleCustomeListItemRowActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: V_Listview(),
    );
  }
}

class V_Listview extends StatefulWidget {
  @override
  _CustomListView createState() => _CustomListView();
}

class _CustomListView extends State<V_Listview> {
  var items = List<ListItemModal>();

  @override
  void initState() {
    super.initState();
    items.add(ListItemModal("Test One"));
    items.add(ListItemModal("Test Two"));
    items.add(ListItemModal("Test One"));
    items.add(ListItemModal("Test Two"));
    items.add(ListItemModal("Test One"));
    items.add(ListItemModal("Test Two"));
    items.add(ListItemModal("Test One"));
    items.add(ListItemModal("Test Two"));
    items.add(ListItemModal("Test One"));
    items.add(ListItemModal("Test Two"));
    items.add(ListItemModal("Test One"));
    items.add(ListItemModal("Test Two"));
    items.add(ListItemModal("Test One"));
    items.add(ListItemModal("Test Two"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: myCustomeWidget(),
    ));
  }

  Widget myCustomeWidget() {
    return Container(
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: MediaQuery.of(context).size.height,
            child: Card(
              color: Colors.white,
              elevation: 0.75,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/bg_reataurant.png',
                                fit: BoxFit.fitWidth,
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                              ),
                            )),
                        Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('assets/ic_like.png',
                                  width: 20, height: 20),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'The Keg Steakhouse + Bar Yourk Street',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(500, 14, 34, 83),
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 3),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Pastas / Mozzarella / FasFood',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(60, 14, 34, 83),
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8,left: 3),
                            child: Row(
                              children: <Widget>[
                                RatingBar(
                                  initialRating: 3,
                                  minRating: 1,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Align(
                                    child: Text(
                                      '(762 reviews)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(500, 14, 34, 83),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8,left: 3),
                            child: Row(
                              children: <Widget>[
                                Align(child: Padding(
                                padding: const EdgeInsets.only(left: 0),
                                    child: Image.asset("assets/ic_clock.png",width: 15,height: 15))),
                                Align(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      '10 - 15 min',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(500, 14, 34, 83),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ),
                                Align(child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Image.asset("assets/ic_pin.png",width: 15,height: 15),
                                )),
                                Align(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      '0 - 5 kim',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(500, 14, 34, 83),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
