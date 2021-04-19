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

List<Product> products = [
  Product(
    id: 0,
    image: 'assets/images/watch.png',
    price: 1200,
    size: 10,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Awesome Tee',
  ),
  Product(
    id: 1,
    image: 'assets/images/watch.png',
    price: 1200,
    size: 10,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Awesome Tee',
  ),
  Product(
    id: 2,
    image: 'assets/images/watch.png',
    price: 1200,
    size: 10,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Awesome Tee',
  ),
  Product(
    id: 3,
    image: 'assets/images/watch.png',
    price: 1200,
    size: 10,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Awesome Tee',
  ),
  Product(
    id: 4,
    image: 'assets/images/watch.png',
    price: 1200,
    size: 10,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Awesome Tee',
  ),
];

String descriptionText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis venenatis metus vitae odio elementum, id commodo nisl varius. Duis sed pharetra nisl, et pharetra mi. Pellentesque nibh nisl, rutrum a justo posuere, pellentesque egestas velit.';
