import 'package:apple/components/categories.dart';
import 'package:apple/components/single_item.dart';
import 'package:apple/details/details_screen.dart';
import 'package:apple/models/Product.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: cPadding),
          child: Text('Kids',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: cPadding),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: cPadding,
                crossAxisSpacing: cPadding,
              ),
              itemBuilder: (context, index) => mSingleItem(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
