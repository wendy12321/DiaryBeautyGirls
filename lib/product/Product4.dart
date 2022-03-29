import 'package:flutter/material.dart';

// Gambar yang ada pada file ini berada di assets

class Product4 {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product4({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}
List<Product4> products4 = [
  Product4(
      id: 1,
      title: "Office Code 1",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dresses/Baju_1.png",
      color: Color(0xFF3D82AE)),
  Product4(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/dresses/Baju_2.png",
      color: Color(0xFFD3A984)),
  Product4(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/dresses/Baju_3.png",
      color: Color(0xFF989493)),
  Product4(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/dresses/Baju_4.png",
      color: Color(0xFFE6B398)),
  Product4(
      id: 5,
      title: "Office Code 2",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dresses/Baju_5.png",
      color: Color(0xFFFB7883)),
  Product4(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/dresses/dress_4.png",
      color: Color(0xFFE6B398)),
  Product4(
      id: 5,
      title: "Office Code 2",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/dresses/dress_5.png",
      color: Color(0xFFFB7883)),
  Product4(
    id: 6,
    title: "Office Code 3",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/dresses/dress_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
