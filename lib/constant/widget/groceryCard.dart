// grocery_card.dart

import 'package:flutter/material.dart';

class GroceryCard extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final String imagePath;

  GroceryCard({
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Material(
            child: ListTile(
              title: Text(itemName),
              subtitle: Text('\$${itemPrice.toStringAsFixed(2)}'),
            ),
          ),
        ],
      ),
    );
  }
}
