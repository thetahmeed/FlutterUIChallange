import 'package:apple/models/Product.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class theDecription extends StatelessWidget {
  const theDecription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: cPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
