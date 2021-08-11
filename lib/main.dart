
import 'package:bitebunk/sceens/dashboard.dart';
import 'package:flutter/material.dart';


void main() => runApp(Bytebank());

class Bytebank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),

      home: Dashboard()
    );
  }
}


