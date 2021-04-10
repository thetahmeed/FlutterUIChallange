import 'package:apple/ui/utils.dart';
import 'package:flutter/material.dart';

class FanPage extends StatefulWidget {
  @override
  _FanPageState createState() => _FanPageState();
}

class _FanPageState extends State<FanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EFF6),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Utils().appBar(),
            Utils().albumImage(context),
            Utils().songName(),
            Utils().progressBar(),
            Utils().songTime(),
            Utils().controlButtons(),
            Utils().lastButtons(),
          ],
        ),
      ),
    );
  }
}
