import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/constant/widget/detailscreen.dart';
import 'package:grocery_shop/model/product_cart.dart';
import 'package:grocery_shop/screens/cart/cart_product.dart';
import 'package:provider/provider.dart';

class CategoryDetail extends StatelessWidget {
  final List<Product> products;

  const CategoryDetail(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: headingColor,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            const Text(
              'Choice Is Your',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w400, color: blackSet),
            ),
            const Icon(Icons.search, color: blackSet),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ),
                );
              },
              icon: cart.items.isNotEmpty
                  ? const Icon(Icons.shopping_bag_sharp, color: shoppingBag)
                  : const Icon(
                      Icons.shopping_bag_outlined,
                      color: blackSet,
                    ),
            ),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: shoppingBag,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelColor: backGroundColor,
                  tabs: const [
                    Tab(
                      text: 'Popular',
                    ),
                    Tab(
                      text: 'Low Price',
                    ),
                    Tab(
                      text: 'Small Items',
                    ),
                    // Tab(
                    //   text: 'Big',
                    // ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    MyWidget(products),
                    MyWidget(products),
                    MyWidget(products),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
