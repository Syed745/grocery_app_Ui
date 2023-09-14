import 'package:flutter/material.dart';
import 'package:grocery_shop/model/product_cart.dart';
import 'package:grocery_shop/screens/getStartScreen/categoryDetail.dart';
import 'package:provider/provider.dart';

class FinalScreen extends StatelessWidget {
  // String imgPath = 'assets/images/orange.jpg';
  FinalScreen({super.key});

  final List<Product> products = [
    Product("Orange", 10.0, 'assets/images/orange.jpg'),
    Product("Banana", 15.0, 'assets/images/banana.jpg'),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CategoryDetail(products),
        ),
      ),
    );
  }
}
