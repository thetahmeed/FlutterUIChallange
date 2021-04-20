import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        theCounterButton(
            icon: Icons.remove_rounded,
            press: () {
              if (i > 1) {
                setState(() {
                  i--;
                });
              }
            }),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: cPadding / 2),
            child: Text(i.toString().padLeft(2, '0'),
                style: Theme.of(context).textTheme.headline6)),
        theCounterButton(
            icon: Icons.add_rounded,
            press: () {
              if (i < 15) {
                setState(() {
                  i++;
                });
              }
            }),
      ],
    );
  }

  SizedBox theCounterButton({IconData icon, Function press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          //side: BorderSide(width: 2, color: Colors.green),
        ),
        child: Icon(icon),
        onPressed: press,
      ),
    );
  }
}
