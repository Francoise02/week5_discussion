import 'package:flutter/material.dart';
import "./Screen1.dart";
import 'screen2.dart';
import './HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          body: ListView(
            children: [
              HomePage()
            ]
          ,
          ),
        ));
  }
}
