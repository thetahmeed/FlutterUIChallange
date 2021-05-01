import 'package:apple/inkfiles/constants.dart';
import 'package:flutter/material.dart';

class chatAndCart extends StatelessWidget {
  const chatAndCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(cDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: cDefaultPadding, vertical: cDefaultPadding / 2),
      decoration: BoxDecoration(
        color: cSecondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            Icons.mark_chat_unread_rounded,
            color: Colors.white,
          ),
          SizedBox(width: cDefaultPadding / 2),
          Text(
            'Chat',
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket_rounded,
              color: Colors.white,
            ),
            label: Text(
              'Add to cart',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
