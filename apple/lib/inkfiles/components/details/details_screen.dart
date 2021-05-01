import 'package:apple/inkfiles/components/details/body.dart';
import 'package:apple/inkfiles/constants.dart';
import 'package:apple/inkfiles/product.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimaryColor,
      appBar: mAppBar(context),
      body: SafeArea(
        child: InkDBody(
          product: product,
        ),
      ),
    );
  }

  AppBar mAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: cBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: cDefaultPadding / 2),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
