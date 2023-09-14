import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/constant/widget/groceryCard.dart';
import 'package:grocery_shop/model/groceryItem.dart';
import 'package:grocery_shop/screens/cart/cartDetail.dart';

class GroceryListPage extends StatelessWidget {
  const GroceryListPage({
    Key? key,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bodyBack,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: groceryItems
            .length, // Access the grocery data from the imported file
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShoppingCartDetail(),
                ),
              );
            },
            child: Container(
              width: 128,
              height: 194,
              color: cardBody,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 100,
                  height: 10,
                  child: GroceryCard(
                    itemName: item.name,
                    itemPrice: item.price,
                    imagePath: item.imagePath,
                    itemIcon: item.itemIcon != null ? item.itemIcon : null,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

 // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => GroceryCard(
                //       itemName: item.name,
                //       itemPrice: item.price,
                //       imagePath: item.imagePath,
                //     ),
                //   ),
                // );