import 'package:flutter/material.dart';
import 'package:grocery_shop/screens/getStartScreen/getStart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          //GroceryHome()
          // BottomTabs()
          GetStart(),
    );
  }
}