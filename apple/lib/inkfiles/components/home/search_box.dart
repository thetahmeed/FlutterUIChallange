import 'package:apple/inkfiles/constants.dart';
import 'package:flutter/material.dart';

class mSearchBox extends StatelessWidget {
  const mSearchBox({
    Key key,
    this.searchedValue,
  }) : super(key: key);
  final ValueChanged searchedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(cDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: cDefaultPadding, vertical: cDefaultPadding / 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: searchedValue,
        showCursor: false,
        cursorColor: Colors.white,
        cursorRadius: Radius.circular(12),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
