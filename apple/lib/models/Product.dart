import 'package:flutter/material.dart';

class Product {
  final String image, name, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.image,
      this.name,
      this.description,
      this.price,
      this.size,
      this.id,
      this.color});
}
