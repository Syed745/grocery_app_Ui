import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/model/product_cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    double delivery = 2.00;
    final screenSize = MediaQuery.of(context).size;

    // Calculate the width and height as a percentage of the screen size
    final containerWidth = screenSize.width * 1.0; // 60% of screen width
    // final containerHeight = screenSize.height * 0.1; // 30% of screen height
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: shoppingBag,
        title: const Text(
          "Shopping Cart (5)",
          style: TextStyle(color: blackSet, fontWeight: FontWeight.w100),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: shoppingBag,
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "25%",
                  style: TextStyle(
                      fontSize: 110,
                      fontWeight: FontWeight.w800,
                      color: headingColor),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: containerWidth,
              height: 4,
              color: const Color(0xffff9f1c),
              child: const Center(
                child: Text("Use code #HalalFood at Checkout",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    final product = cart.items[index];
                    return ListTile(
                      leading: Image.asset(product.img),
                      title: Text(product.name),
                      subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.remove_shopping_cart,
                          color: shoppingBag,
                        ),
                        onPressed: () {
                          cart.removeFromCart(product);
                        },
                      ),
                    );
                  },
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        width: 359,
        height: 266,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: addtocartbottom,
        ),
        child: Column(
          children: [
            ListTile(
              title: Text('Subtotal'),
              trailing: Text('\$${cart.totalPrice.toStringAsFixed(2)}'),
            ),
            ListTile(
              title: Text('Delivery'),
              trailing: Text('\$${delivery}0'),
            ),
            ListTile(
              title: Text('Total'),
              trailing: Text('\$${cart.totalPrice + delivery}0'),
            ),
            Container(
              width: 327,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backGroundColor,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Proceed To checkout",
                  style: TextStyle(color: headingColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
