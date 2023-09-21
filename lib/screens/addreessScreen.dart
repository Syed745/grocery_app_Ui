import 'package:flutter/material.dart';
import 'package:grocery_shop/constant/color.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int selectedAddressIndex = -1; // Initially, no address is selected

  List<String> addresses = [
    "Home \n\n36 green way, Sunamganj",
    "Office \n\nMedical road, Halal lab, Sunamganj",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: // Set the preferred height here
          AppBar(
        title: const Text(
          "Shopping Cart (5)",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Text(
            "Delivery Address",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: addresses.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAddressIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedAddressIndex == index
                            ? shoppingBag
                            : paragraphColor, // Change border color to yellow if selected
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          addresses[index],
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(onPressed: () {}, child: const Text('Edit')),
                        if (selectedAddressIndex == index)
                          const Icon(
                            Icons.check_circle,
                            color: shoppingBag, // Change the check icon color
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle_outlined, color: shoppingBag),
              ),
              Text("Add New Address",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        width: 327,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backGroundColor,
        ),
        child: Center(
          child: Text(
            "Add Card",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: paragraphColor),
          ),
        ),
      ),
    );
  }
}
