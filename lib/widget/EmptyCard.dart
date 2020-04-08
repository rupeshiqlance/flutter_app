import 'package:flutter/material.dart';

class EmptyCard extends StatelessWidget {
  final double width;
  final double height;

  const EmptyCard({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Text(
        'No record found',
        style: TextStyle(
          color: Colors.blue,
              fontSize: 20,
          fontStyle: FontStyle.italic
        ),
      ),
     /* margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: const Offset(0.0, 4.0),
          ),
        ],
      ),*/
    );
  }
}