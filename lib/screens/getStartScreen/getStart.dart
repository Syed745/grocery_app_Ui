import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/constant/widget/createStartPage.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

var currentPage = 0;

class _GetStartState extends State<GetStart> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Stack(
            children: [
              CreateStartPage(
                hStr: 'Your holiday\n shopping\n delivered to Screen\n one',
                paraTxt:
                    "There's something for everyone\n to enjoy with Sweet Shop\n Favorites Screen 1",
              ),
            ],
          ),
          Stack(
            children: [
              CreateStartPage(
                hStr: 'Your holiday\n shopping\n delivered to Screen\n two',
                paraTxt:
                    "There's something for everyone\n to enjoy with Sweet Shop\n Favorites Screen 2",
              ),
            ],
          )
        ],
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}

Widget row() {
  return Row(
    children: [
      currentPage == 0
          ? const Icon(
              Icons.horizontal_rule_sharp,
              color: headingColor,
              size: 50,
            )
          : const Icon(
              Icons.horizontal_rule_outlined,
              color: paragraphColor,
            ),
      currentPage == 1
          ? const Icon(
              Icons.horizontal_rule_sharp,
              color: headingColor,
              size: 50,
            )
          : const Icon(
              Icons.horizontal_rule_outlined,
              color: paragraphColor,
            ),
    ],
  );
}
