import 'package:apple/components/categories.dart';
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
        Container(
          padding: EdgeInsets.all(cPadding),
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius: BorderRadius.circular(16),
          ),
          height: 180,
          width: 160,
          child: Image.asset(products[0].image),
        )
      ],
    );
  }
}
