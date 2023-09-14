import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/screens/category/categoryscreendata.dart';
import 'package:grocery_shop/screens/categoryScreen.dart';
import 'package:grocery_shop/screens/getStartScreen/groceryHome.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({super.key});

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int currentIndex = 0;
  final screen = [GroceryHome(), CategoryPage(), FinalScreen(), CategoryPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.teal,
      //   title: const Text('Home',
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       )),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: headingColor,
          selectedItemColor: Color(0xffe9c46a),
          type: BottomNavigationBarType.fixed,
          backgroundColor: backGroundColor,
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category_outlined,
                ),
                label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                ),
                label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_vert_outlined,
                ),
                label: 'More'),
          ]),
      body: IndexedStack(index: currentIndex, children: screen),
    );
  }
}
