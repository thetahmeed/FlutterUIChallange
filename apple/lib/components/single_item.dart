import 'package:apple/models/Product.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class mSingleItem extends StatelessWidget {
  final Product product;
  final Function press;

  const mSingleItem({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(cPadding),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(product.image),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: cPadding / 4),
          child: Text(
            product.name,
            style: TextStyle(color: cTextLightColor),
          ),
        ),
        Text(
          '\$${product.price}',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
