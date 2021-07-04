import 'package:apple/jupiter/ui/HomePage/ui/HomePage.dart';
import 'package:flutter/material.dart';

class SingleDot extends StatelessWidget {
  const SingleDot({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 300),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue.shade900 : Color(0xFF8D8D8D),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
