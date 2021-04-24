import 'package:apple/horn/components/card.dart';
import 'package:apple/horn/components/header.dart';
import 'package:apple/horn/constants.dart';
import 'package:flutter/material.dart';

class HornPage extends StatefulWidget {
  @override
  _HornPageState createState() => _HornPageState();
}

class _HornPageState extends State<HornPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: gradientEndColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientEndColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              theHeader(),
              theCard(size: _size),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  Container bottomNav() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
      ),
      padding: EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            tooltip: 'Explore',
            icon: Icon(
              Icons.explore_rounded,
              color: gradientEndColor,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Search',
            icon: Icon(
              Icons.search_rounded,
              color: Colors.grey,
              size: 25,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Profile',
            icon: Icon(
              Icons.person_rounded,
              color: Colors.grey,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
