import 'package:apple/inkfiles/constants.dart';
import 'package:flutter/material.dart';

class colorDot extends StatelessWidget {
  const colorDot({
    Key key,
    this.color,
    this.isSelected,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      margin: EdgeInsets.symmetric(horizontal: cDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
