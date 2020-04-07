import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/modal/CustomUIOneModal.dart';
import 'package:flutter_app/modal/ListItemModal.dart';
import 'package:flutter_app/widget/EmptyCard.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toast/toast.dart';

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
  var items = List<CustomUIOneModal>();

  @override
  void initState() {
    super.initState();
    items.add(CustomUIOneModal("The Grand Bhagavati","Pep / Papad / Salad","745","10 - 15","0 - 15"));
    items.add(CustomUIOneModal("The Grand Jivo","Shabji / Papad-salad / Salad","125","20 - 45","09 - 20"));
    items.add(CustomUIOneModal("The Grand US Pizza","Chappati / Papad-milk / Salad","596","30 - 75","12 - 25"));
    items.add(CustomUIOneModal("The Grand Dominoze","alukaddi / milk / Salad","01","40 - 15","19 - 15"));
    items.add(CustomUIOneModal("The Grand Italian Pizza","Rice / Papad / Salad","789","45 - 43","43 - 45"));
    items.add(CustomUIOneModal("The Grand Gopi","Plain raice / Papad / Salad","25","44 - 14","11 - 15"));
    items.add(CustomUIOneModal("The Grand Jay Ambe","Noodals / Papad-milk / Salad","4567","64 - 11","13 - 35"));
    items.add(CustomUIOneModal("The Grand Snackwalla","Rice Dal / Papad / rice","234","23 - 63","10 - 55"));
    items.add(CustomUIOneModal("The Grand Bhagavati","Rice Dal / Papad / rice","568","11 - 45","12 - 15"));
    items.add(CustomUIOneModal("The Grand Bhagyoday","Only Dal / Papad / Salad","111","10 - 44","16 - 45"));

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
      child: items.isEmpty ? Center(child: EmptyCard()) :ListView.builder(
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
                              child: InkWell(
                                onTap: () => heartClick(),
                                child: Image.asset('assets/ic_like.png',
                                    width: 20, height: 20),
                              ),
                            )
                        ),
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
                            items[index].RestaurantName,
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
                              items[index].MenuItem,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(60, 14, 34, 83),
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                       Padding(
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
                                        '('+items[index].Reviews+' reviews )',
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

                         Padding(
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
                                      items[index].Minit+' min',
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
                                      items[index].Kilomiter+' KM',
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
   void heartClick() {
     Toast.show("Heart Clicked", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
   }
}
