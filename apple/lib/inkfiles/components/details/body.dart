import 'package:apple/inkfiles/components/details/chat_and_cart.dart';
import 'package:apple/inkfiles/components/details/pick_color.dart';
import 'package:apple/inkfiles/components/details/product_image.dart';
import 'package:apple/inkfiles/constants.dart';
import 'package:apple/inkfiles/product.dart';
import 'package:flutter/material.dart';

class InkDBody extends StatelessWidget {
  final Product product;

  const InkDBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: cDefaultPadding),
              decoration: BoxDecoration(
                color: cBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: '${product.id}',
                    child: productImage(
                      size: size,
                      image: product.image,
                    ),
                  ),
                  pick_color(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: cDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: cSecondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: cDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(color: cTextLightColor),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: cDefaultPadding),
                ],
              ),
            ),
            chatAndCart(),
          ],
        ),
      ),
    );
  }
}
