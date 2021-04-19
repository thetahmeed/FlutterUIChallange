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
    image: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5449.png',
    price: 1200,
    size: 10,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'The Tee',
  ),
  Product(
    id: 1,
    image: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5448.png',
    price: 1200,
    size: 11,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Another Tee',
  ),
  Product(
    id: 2,
    image: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5450.png',
    price: 1300,
    size: 12,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'The Another Tee',
  ),
  Product(
    id: 3,
    image: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5436.png',
    price: 1400,
    size: 13,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Different Tee',
  ),
  Product(
    id: 4,
    image: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5445.png',
    price: 1500,
    size: 14,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Changed Tee',
  ),
  Product(
    id: 5,
    image: 'https://pngimg.com/uploads/tshirt/tshirt_PNG5433.png',
    price: 1600,
    size: 15,
    description: descriptionText,
    color: Color(0xFF3D82AE),
    name: 'Totally different Tee',
  ),
];

String descriptionText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis venenatis metus vitae odio elementum, id commodo nisl varius. Duis sed pharetra nisl, et pharetra mi. Pellentesque nibh nisl, rutrum a justo posuere, pellentesque egestas velit.';
