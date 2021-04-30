import 'package:apple/inkfiles/constants.dart';
import 'package:apple/ui/apple.dart';
import 'package:apple/ui/ball.dart';
import 'package:apple/ui/cat.dart';
import 'package:apple/ui/constants.dart';
import 'package:apple/ui/dog.dart';
import 'package:apple/ui/egg.dart';
import 'package:apple/ui/fan.dart';
import 'package:apple/ui/garden.dart';
import 'package:apple/ui/home.dart';
import 'package:apple/ui/ink.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: cPrimaryColor,
        accentColor: cPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      /*
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: cTextColor,
            ),
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
      ),*/
      // home: HomePage(), // AKA ApplePage
      // home: BallPage(),
      // home: CatPage(),
      // home: DogPage(),
      // home: EggPage(),
      //home: FanPage(),
      //home: GardenPage(),
      //home: HornPage(),
      home: Inkpage(),

      debugShowCheckedModeBanner: false,
    );
  }
}
