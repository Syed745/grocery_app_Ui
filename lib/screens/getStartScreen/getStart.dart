import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/widget/createStartPage.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

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
      ),
    );
  }
}
