import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedFurnituresHome extends StatelessWidget {
  RecommendedFurnituresHome({super.key});

  final List<Map<String, dynamic>> _furnitures = [
       {
      'name': 'Stylish Chair',
      'price': 170,
      'star': 4.8,
      'image': 'assets/images/img_product_2.png',
    },
    {
      'name': 'Modern Table',
      'price': 75,
      'star': 4.9,
      'image': 'assets/images/img_product_3.png',
    },
    {
      'name': 'Wooden Console',
      'price': 240,
      'star': 4.7,
      'image': 'assets/images/img_product_4.png',
    },
    {
      'name': 'Brown Armchair',
      'price': 210,
      'star': 4.9,
      'image': 'assets/images/img_product_5.png',
    },
  ]
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
