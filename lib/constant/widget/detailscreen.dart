import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/model/product_cart.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  final List<Product> products;

  const MyWidget(this.products, {super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: paragraphColor,
            child: Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(product.img),
                ),
                Text(product.name),
                Text("\$${product.price.toStringAsFixed(2)}"),
                Consumer<Cart>(
                  builder: (context, cart, child) {
                    return IconButton(
                      icon: const Icon(Icons.add_shopping_cart),
                      onPressed: () {
                        cart.addToCart(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${product.name} added to cart."),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
