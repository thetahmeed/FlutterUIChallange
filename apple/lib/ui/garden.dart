import 'package:apple/components/body.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class GardenPage extends StatefulWidget {
  @override
  _GardenPageState createState() => _GardenPageState();
}

class _GardenPageState extends State<GardenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mAppBar(),
      body: Body(),
    );
  }

  AppBar mAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: cTextColor,
          ),
          onPressed: () {}),
      actions: [
        IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: cTextColor,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: cTextColor,
            ),
            onPressed: () {}),
        SizedBox(width: cPadding / 2),
      ],
    );
  }
}
