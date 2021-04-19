import 'package:apple/models/Product.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
