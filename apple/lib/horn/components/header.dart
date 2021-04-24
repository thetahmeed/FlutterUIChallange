import 'package:flutter/material.dart';

class theHeader extends StatelessWidget {
  const theHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore',
            style: TextStyle(
              fontSize: 44,
              fontFamily: 'Avenir',
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          DropdownButton(
            hint: Text(
              'Fantasy',
              style: TextStyle(color: Colors.white),
            ),
            items: [
              DropdownMenuItem(
                child: Text(
                  'Fantasy',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    color: const Color(0x7cdbf1ff),
                    fontWeight: FontWeight.w500,
                  ),
                  //textAlign: TextAlign.left,
                ),
              ),
            ],
            onChanged: (value) {},
            icon: Icon(
              Icons.arrow_drop_down_rounded,
              color: Colors.white,
            ),
            underline: SizedBox(),
          )
        ],
      ),
    );
  }
}
