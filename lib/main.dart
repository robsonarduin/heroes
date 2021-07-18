import 'package:flutter/material.dart';
import 'package:heroes/screens/list_heroes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heroes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListHeroes(),
    );
  }
}
