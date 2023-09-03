import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/widget/screenTop.dart';

class GroceryHome extends StatelessWidget {
  const GroceryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenAppBar(headingText: 'Hey, Bilal'),
    );
  }
}
