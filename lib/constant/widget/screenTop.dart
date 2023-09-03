import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';

class ScreenAppBar extends StatelessWidget {
  final headingText;
  const ScreenAppBar({super.key, required this.headingText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth * 1.0,
            height: screenHeight * 0.3,
            decoration: const BoxDecoration(color: backGroundColor),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    headingText,
                    style: const TextStyle(
                      color: headingColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      iconSize: 22,
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: headingColor,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            right: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff142f74),
                borderRadius: BorderRadius.circular(28),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.search_sharp,
                      color: headingColor,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    labelStyle: TextStyle(color: paragraphColor),
                    labelText: 'Search Products or store',
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
