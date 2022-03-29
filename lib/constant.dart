import 'package:flutter/material.dart';

// Warna dasar
const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
const kDefaultPaddin = 20.0;

const String APP_TITLE = 'SHOP UI';

// Untuk gambar di Account Page
const String profileUrl =
    "https://images.unsplash.com/photo-1564349683136-77e08dba1ef7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80'";

// Untuk gambar di Cart Page
const List cartList = [
  {
    "img":
        "https://th.bing.com/th/id/OIP.JOwJcSEvQVsMDFAquQ0cqgHaHa?pid=ImgDet&rs=1",
    "name": "Snoopy T-shirt",
    "ref": "04559812",
    "price": "\$40",
    "size": "S"
  },
  {
    "img":
        "https://cf.shopee.co.id/file/14f1f4c0cd536d830d883a0e91a45e7a",
    "name": "American",
    "ref": "04459811",
    "price": "\$30",
    "size": "M"
  },
];

// Untuk detail list di Account Page
List accountList = [
  "Loyalty card & offers",
  "Notifications",
  "Delivery Information",
  "Payment Information",
  "Language",
  "Privacy Settings",
];
