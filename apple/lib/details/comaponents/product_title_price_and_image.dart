import 'package:apple/models/Product.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class theTitlePriceAndImage extends StatelessWidget {
  const theTitlePriceAndImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: cPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The title',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: cPadding * 2),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: ('Price\n')),
                    TextSpan(
                      text: ('\$${product.price}'),
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: cPadding),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.network(
                    product.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
