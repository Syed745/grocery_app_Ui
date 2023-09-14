// grocery_data.dart

import 'package:flutter/material.dart';

class GroceryItem {
  final String name;
  final double price;
  final String imagePath;
  final IconData? itemIcon;

  GroceryItem(
      {required this.name,
      required this.price,
      required this.imagePath,
      this.itemIcon});
}

List<GroceryItem> groceryItems = [
  GroceryItem(
      name: 'Apples',
      price: 2.99,
      imagePath: 'assets/images/apple.jpg',
      itemIcon: Icons.add_circle),
  GroceryItem(
      name: 'Banana',
      price: 3.49,
      imagePath: 'assets/images/banana.jpg',
      itemIcon: Icons.add_circle),
  GroceryItem(
      name: 'Oranges',
      price: 3.49,
      imagePath: 'assets/images/orange.jpg',
      itemIcon: Icons.add_circle),
  GroceryItem(
      name: 'Oranges',
      price: 3.49,
      imagePath: 'assets/images/orange.jpg',
      itemIcon: Icons.add_circle),
];
