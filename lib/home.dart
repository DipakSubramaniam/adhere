import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'main.dart';
import 'package:charts_flutter/flutter.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new Home(),);
  }
}

class Home extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: Column (
        // Graph
        // Cards
        // Other
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: null
        //Left / Right Navigation
      )
    );
  }
}

