import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/constant/widget/bottomTabBAr.dart';

class CreateStartPage extends StatelessWidget {
  final hStr;
  final paraTxt;
  CreateStartPage({Key? key, required this.hStr, required this.paraTxt})
      : super(
          key: key,
        );
// "There's something for everyone to enjoy with Sweet Shop Favorites Screen 1"
  // String firstImg = 'assets/images/ImageIcon.png';

  // String secondImg = 'assets/images/Arrow.png';

  // String emoji = 'assets/images/Emoji.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: MediaQuery.of(context).size.height * 0.1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    hStr,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: headingColor,
                    ),
                  ),
                  // Image.asset(
                  //   'assets/images/Emoji.png',
                  //   fit: BoxFit.contain,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      paraTxt,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: paragraphColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                    ),
                    child: row(),
                  ),
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        'assets/images/ImageIcon.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    width: 253,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: headingColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomTabs(),
                              ),
                            );
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff1E222B),
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/Arrow.png',
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var currentPage = 0;

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
