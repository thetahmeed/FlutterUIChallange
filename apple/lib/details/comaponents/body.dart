import 'package:apple/details/comaponents/cart_and_buy_button.dart';
import 'package:apple/details/comaponents/color_and_size.dart';
import 'package:apple/details/comaponents/counter_and_fav_icon.dart';
import 'package:apple/details/comaponents/description.dart';
import 'package:apple/details/comaponents/product_title_price_and_image.dart';
import 'package:apple/models/Product.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                      left: cPadding, right: cPadding, top: size.height * 0.12),
                  //height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      theColorAndSize(product: product),
                      SizedBox(height: cPadding / 2),
                      theDecription(product: product),
                      SizedBox(height: cPadding / 2),
                      theCounterAndFavIcon(),
                      SizedBox(height: cPadding / 2),
                      theCartAndBuyButton(product: product),
                    ],
                  ),
                ),
                theTitlePriceAndImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
