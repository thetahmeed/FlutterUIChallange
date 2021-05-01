import 'package:apple/inkfiles/components/details/details_screen.dart';
import 'package:apple/inkfiles/components/home/categories.dart';
import 'package:apple/inkfiles/components/home/search_box.dart';
import 'package:apple/inkfiles/components/home/single_product.dart';
import 'package:apple/inkfiles/constants.dart';
import 'package:apple/inkfiles/product.dart';
import 'package:flutter/material.dart';

class InkBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          mSearchBox(searchedValue: (value) {}),
          mCategory(),
          SizedBox(height: cDefaultPadding / 1),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: cBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: inkProductList.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => singleProduct(
                    index: index,
                    product: inkProductList[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            product: inkProductList[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
