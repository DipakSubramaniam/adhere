import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'main.dart';
import 'package:charts_flutter/flutter.dart';
import 'dart:collection';
import 'dart:developer';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';


void main() {
 runApp(MyApp());
}

List<String> prescriptions = new List();

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
        children: [
          Text(""),
          SingleChildScrollView(
            child: ListView(
              children: <Widget>[
                //Array to create multiple cards
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        //contentPadding)
                        leading: Icon(Icons.notifications_active),
                        title: Text('Tamiflu (sci name), 75 mg'),
                        subtitle: Text('1 pill every 12 hours for 3 days'),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Did Not Take'),
                            onPressed: () {/*Tally Not Taken*/},
                          ),
                          FlatButton(
                            child: const Text('Slightly postpone'),
                            onPressed: () {/*Buffer time*/},
                          ),
                          FlatButton(
                            child: const Text('Took the Tablet!'),
                            onPressed: () {/*Tally Taken*/},
                          )
                        ],
                      )
                    ],
                  )
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        //contentPadding)
                        leading: Icon(Icons.notifications_active),
                        title: Text('Azithromycin (sci name), 100 mg'),
                        subtitle: Text('2 pills every day for 2 weeks'),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Did Not Take'),
                            onPressed: () {/*Tally Not Taken*/},
                          ),
                          FlatButton(
                            child: const Text('Slightly postpone'),
                            onPressed: () {/*Buffer time*/},
                          ),
                          FlatButton(
                            child: const Text('Took the Tablet!'),
                            onPressed: () {/*Tally Taken*/},
                          )
                        ],
                      )
                    ],
                  )
                )
              ],
            )
          )
        ]
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: null
        //Left / Right Navigation
      )
    );
  }
}

