import 'package:flutter/material.dart';
//import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds:  ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => User_Name(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Welcome to Adhere',
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'The goal of this app is to help keep track of your daily medication and aid in the regulation of your health routines.\nGood luck, and Stay Healthy!\n-Adhere Labz',
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.blue,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class User_Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Hello User!',
          style: new TextStyle(color: Colors.blue),
          textAlign: TextAlign.left,
        ),
      ),
      body:  Center(
        child: TextField(
          controller: TextEditingController(),
          // onSubmitted: (String value),
        ),
      )
    );
  }
}
