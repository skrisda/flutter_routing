import 'package:flutter/material.dart';
import 'package:flutter_routing/about.dart';
import 'package:flutter_routing/contact.dart';
import 'package:flutter_routing/home.dart';
import 'package:flutter_routing/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
        '/setting': (context) => Setting()
      },
    );
  }
}
