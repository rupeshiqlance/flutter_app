import 'package:flutter/material.dart';
import 'package:flutter_app/SplaceScreen.dart';


void main() =>
  runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Flutter Login UI',
       theme: ThemeData(
         primarySwatch: Colors.blue
       ),
       home: SplaceScreen(),
     );
  }
}
