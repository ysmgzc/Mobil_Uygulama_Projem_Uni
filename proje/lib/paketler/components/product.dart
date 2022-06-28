import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}
//anasayfamızdaki ürünlerimiz

List<Product> demo_product = [
  Product(
    image: "assets/fotolar/product_0.png",
    title: "Kısa Kol Gömlek",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/fotolar/tisort_gomlek.png",
    title: "Günlük-Spor Gömlek",
    price: 99,
  ),
  Product(
    image: "assets/fotolar/tisort.png",
    title: "Tişört",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/fotolar/tisort3.png",
    title: "Tişört",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
