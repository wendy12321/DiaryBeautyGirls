import 'package:flutter/material.dart';

class Product2 {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product2({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}
List<Product2> products2 = [
  Product2(
      id: 1,
      title: "Office Code 1",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/jewellery/Jewel_1.png",
      color: Color(0xFF3D82AE)),
  Product2(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/jewellery/Jewel_2.png",
      color: Color(0xFFD3A984)),
  Product2(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/jewellery/Jewel_3.png",
      color: Color(0xFF989493)),
  Product2(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/jewellery/Jewel_4.png",
      color: Color(0xFFE6B398)),
  Product2(
      id: 5,
      title: "Office Code 2",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/jewellery/Jewel_5.png",
      color: Color(0xFFFB7883)),
  Product2(
    id: 6,
    title: "Office Code 3",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/jewellery/Jewel_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";