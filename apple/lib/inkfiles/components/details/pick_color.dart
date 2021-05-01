import 'package:apple/inkfiles/components/details/color_dot.dart';
import 'package:apple/inkfiles/constants.dart';
import 'package:flutter/material.dart';

class pick_color extends StatelessWidget {
  const pick_color({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: cDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          colorDot(
            color: Colors.black,
            isSelected: true,
          ),
          colorDot(
            color: Colors.grey,
            isSelected: false,
          ),
          colorDot(
            color: Colors.purple,
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
