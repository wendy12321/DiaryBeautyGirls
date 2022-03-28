import 'package:flutter/material.dart';

class Product3 {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product3({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}
List<Product3> products3 = [
  Product3(
      id: 1,
      title: "Office Code 1",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/footwear/footwear_1.png",
      color: Color(0xFF3D82AE)),
  Product3(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/footwear/footwear_2.png",
      color: Color(0xFFD3A984)),
  Product3(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/footwear/footwear_3.png",
      color: Color(0xFF989493)),
  Product3(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/footwear/footwear_4.png",
      color: Color(0xFFE6B398)),
  Product3(
      id: 5,
      title: "Office Code 2",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/footwear/footwear_5.png",
      color: Color(0xFFFB7883)),
  Product3(
    id: 6,
    title: "Office Code 3",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/footwear/footwear_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";