import 'package:flutter/material.dart';

class SaleCart extends StatefulWidget {
  const SaleCart({super.key});

  @override
  State<SaleCart> createState() => _SaleCartState();
}

class _SaleCartState extends State<SaleCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 269,
                  height: 123,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xfff9b023),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/ImageIconwhite.png'),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '50% OFF',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                            Text(
                              'On first 03 order',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 158,
                  height: 123,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffe4ddcb),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "215 HRS",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Your time saved",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
