import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';
import 'package:grocery_shop/screens/addreessScreen.dart';

class ShoppingCartDetail extends StatefulWidget {
  const ShoppingCartDetail({super.key});

  @override
  State<ShoppingCartDetail> createState() => _ShoppingCartDetailState();
}

var currentPage = 0;

class _ShoppingCartDetailState extends State<ShoppingCartDetail> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Orange',
          style: TextStyle(color: blackSet),
        ),
        backgroundColor: headingColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView(
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/ImageIconwhite.png'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        row(),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/ImageIconwhite.png'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        row(),
                      ],
                    ),
                  ],
                )
              ],
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: 359,
              height: 549,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xfff7f8fa),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "The Choose Top \nOrange",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "\$34.70/KG",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: backGroundColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("\$22.04 OFF",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Reg: \$56.70 USD",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_sharp,
                            color: shoppingBag,
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: shoppingBag,
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: shoppingBag,
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: shoppingBag,
                          ),
                          Icon(
                            Icons.star_half_sharp,
                            color: shoppingBag,
                          ),
                          Text(
                            "110 Reviews",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA1A1AB),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Details",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff8891A5),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nutritional facts",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    Container(
                      color: paragraphColor,
                      width: 327,
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reviews",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 143,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: backGroundColor),
                          ),
                          child: const Center(
                            child: Text("Add To Cart",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: backGroundColor)),
                          ),
                        ),
                        Container(
                          width: 169,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: backGroundColor,
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddressScreen(),
                                  ),
                                );
                              },
                              child: Text("Buy Now",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
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
              color: shoppingBag,
              size: 30,
            )
          : const Icon(
              Icons.horizontal_rule_outlined,
              color: Color(0xffE4E4E4),
            ),
      currentPage == 1
          ? const Icon(
              Icons.horizontal_rule_sharp,
              color: shoppingBag,
              size: 30,
            )
          : const Icon(
              Icons.horizontal_rule_outlined,
              color: Color(0xffE4E4E4),
            ),
    ],
  );
}
