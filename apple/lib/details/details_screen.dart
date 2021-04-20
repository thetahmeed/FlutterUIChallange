import 'package:apple/details/comaponents/body.dart';
import 'package:apple/models/Product.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: mAppBar(),
      body: Body(product: product),
    );
  }

  AppBar mAppBar() {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      actions: [
        IconButton(icon: Icon(Icons.search_rounded), onPressed: () {}),
        IconButton(icon: Icon(Icons.shopping_cart_rounded), onPressed: () {}),
        SizedBox(width: cPadding / 2),
      ],
    );
  }
}
