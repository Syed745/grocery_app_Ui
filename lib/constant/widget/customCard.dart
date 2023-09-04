import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/widget/groceryCard.dart';
import 'package:grocery_shop/model/groceryItem.dart';

class GroceryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount:
          groceryItems.length, // Access the grocery data from the imported file
      itemBuilder: (context, index) {
        final item = groceryItems[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GroceryCard(
                    itemName: item.name,
                    itemPrice: item.price,
                    imagePath: item.imagePath,
                  ),
                ),
              );
            },
            child: SizedBox(
              width: 200,
              height: 10,
              child: GroceryCard(
                itemName: item.name,
                itemPrice: item.price,
                imagePath: item.imagePath,
              ),
            ),
          ),
        );
      },
    );
  }
}
