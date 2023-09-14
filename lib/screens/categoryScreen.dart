import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/constant/widget/groceryCard.dart';
import 'package:grocery_shop/model/groceryItem.dart';
import 'package:grocery_shop/screens/category/categoryscreendata.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Header Section
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SafeArea(
                    child: Container(
                      height: screenHeight * 0.3,
                      color: backGroundColor,
                      child: Column(
                        children: [
                          // Top Row with Greetings and Icons
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 25),
                            child: Row(
                              children: [
                                const Text(
                                  'Hey, Bilal',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: headingColor,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.search,
                                    color: headingColor,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: headingColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Shop Text
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              " Shop ",
                              style: TextStyle(
                                fontSize: 50,
                                color: headingColor,
                              ),
                            ),
                          ),
                          // By Category Text
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              " By Category",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                                color: headingColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Grocery Items Section
            Expanded(
              flex: 6,
              child: ListView.builder(
                itemCount: groceryItems.length,
                itemBuilder: (context, index) {
                  final item = groceryItems[index];
                  return SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Grocery Card 1
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FinalScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  cardBody, // Set your desired background color
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the radius as needed
                            ),
                            width: 154,
                            height: 164,
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: GroceryCard(
                                itemName: item.name,
                                itemPrice: item.price,
                                imagePath: item.imagePath,
                                // itemIcon: item.icon,
                              ),
                            ),
                          ),
                        ),
                        // Grocery Card 2 (You can add more as needed)
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FinalScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 154,
                            height: 164,
                            decoration: BoxDecoration(
                              color:
                                  cardBody, // Set your desired background color
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the radius as needed
                            ),
                            margin: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: GroceryCard(
                                itemName: item.name,
                                itemPrice: item.price,
                                imagePath: item.imagePath,
                                //itemIcon: item.icon,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
