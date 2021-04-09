import 'package:apple/ui/apple.dart';
import 'package:apple/ui/ball.dart';
import 'package:apple/ui/cat.dart';
import 'package:apple/ui/dog.dart';
import 'package:apple/ui/egg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EggPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
