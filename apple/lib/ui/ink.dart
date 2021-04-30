import 'package:apple/components/body.dart';
import 'package:apple/inkfiles/components/home/body.dart';
import 'package:apple/inkfiles/constants.dart';
import 'package:flutter/material.dart';

class Inkpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimaryColor,
      appBar: mAppBar(),
      body: InkBody(),
    );
  }

  AppBar mAppBar() {
    return AppBar(
      title: Text('Dashboard'),
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_active_outlined),
          onPressed: () {},
        )
      ],
    );
  }
}
