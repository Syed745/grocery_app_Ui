import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/constant/widget/customCard.dart';

class GroceryHome extends StatelessWidget {
  const GroceryHome({super.key});

  @override
  Widget build(BuildContext context) {
    String dropdownVal = 'String';
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: backGroundColor,
                child: ListView(
                  children: [
                    ListTile(
                      title: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 35),
                        child: Text(
                          'Hey, Bilal',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: headingColor),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: headingColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: const TextStyle(color: paragraphColor),
                          hintText: 'Search Product or Stock',
                          prefixIcon: const Icon(
                            Icons.search,
                            color: headingColor,
                          ),
                          filled: true,
                          fillColor: searchBox,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 5.0,
                          ),
                        ),
                      ),
                    ),
                    const ListTile(
                      title: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ' Deliver To\n Green Way 3000, Sylhet',
                              style: TextStyle(
                                color: headingColor,
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                'With In\n1 Hour',
                                style: TextStyle(color: headingColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: GroceryListPage(),
            )
          ],
        ),
      ),
    );
  }
}
