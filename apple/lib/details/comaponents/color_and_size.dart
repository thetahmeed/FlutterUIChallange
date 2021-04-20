import 'package:apple/models/Product.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class theColorAndSize extends StatelessWidget {
  const theColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  theColorDot(
                    color: product.color,
                  ),
                  theColorDot(color: Colors.red, isSelected: true),
                  theColorDot(color: Colors.yellow),
                  theColorDot(color: Colors.purple),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Size'),
              Row(
                children: [
                  theSize(
                    product: product,
                    size: 'XL',
                    isSelected: true,
                  ),
                  theSize(
                    product: product,
                    size: 'L',
                    isSelected: false,
                  ),
                  theSize(
                    product: product,
                    size: 'M',
                    isSelected: false,
                  ),
                  theSize(
                    product: product,
                    size: 'S',
                    isSelected: false,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class theSize extends StatelessWidget {
  final String size;
  final bool isSelected;

  const theSize({
    Key key,
    this.size,
    this.isSelected,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 26,
      width: 26,
      margin: EdgeInsets.only(top: cPadding / 4, right: cPadding / 2),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        border:
            Border.all(color: isSelected ? product.color : Colors.transparent),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        size,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class theColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const theColorDot({
    this.color,
    this.isSelected = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: cPadding / 4, right: cPadding / 2),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      height: 24,
      width: 24,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
