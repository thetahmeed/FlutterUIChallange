import 'package:apple/ui/apple.dart';
import 'package:apple/ui/ball.dart';
import 'package:apple/ui/cat.dart';
import 'package:apple/ui/dog.dart';
import 'package:apple/ui/egg.dart';
import 'package:apple/ui/fan.dart';
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
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: Colors.grey[700]),
          iconTheme: IconThemeData(color: Colors.grey[700])),
      // home: HomePage(), // AKA ApplePage
      // home: BallPage(),
      // home: CatPage(),
      // home: DogPage(),
      // home: EggPage(),

      home: FanPage(),

      debugShowCheckedModeBanner: false,
    );
  }
}
