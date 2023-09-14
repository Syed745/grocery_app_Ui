import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/constant/widget/customCard.dart';
import 'package:grocery_shop/constant/widget/sale_carts.dart';
import 'package:grocery_shop/screens/cart/cart_product.dart';

class GroceryHome extends StatelessWidget {
  const GroceryHome({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenHeight = MediaQuery.of(context).size.height;

          return Column(
            children: [
              Container(
                height: screenHeight * 0.3,
                color: backGroundColor,
                child: ListView(
                  children: [
                    ListTile(
                      title: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Text(
                          'Hey, Bilal',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: headingColor,
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartPage(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: headingColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 15, right: 15),
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
              const Expanded(
                flex: 3,
                child: SaleCart(),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: GroceryListPage(),
                ),
              ),
              const Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: GroceryListPage(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
