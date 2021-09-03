import 'package:flutter/material.dart';
import 'package:parkin/home.dart';
// import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[850]),
      title: 'PArkIn',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
