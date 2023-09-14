// grocery_card.dart

import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';

class GroceryCard extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final String imagePath;
  final IconData? itemIcon;

  GroceryCard({
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    this.itemIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
          Text(itemName),
          Text('\$${itemPrice.toStringAsFixed(2)}'),
          IconButton(
            onPressed: () {},
            icon: Icon(
              itemIcon,
              color: backGroundColor,
            ),
          )
        ],
      ),
    );
  }
}
