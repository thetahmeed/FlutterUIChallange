import 'package:apple/details/comaponents/item_counter.dart';
import 'package:flutter/material.dart';

class theCounterAndFavIcon extends StatelessWidget {
  const theCounterAndFavIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ItemCounter(),
        CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
