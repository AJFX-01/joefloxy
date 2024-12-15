import 'package:flutter/material.dart';

import 'constant_utils.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int activeIndex = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      activeIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.black
                      .withOpacity(0.1), // Shadow color with transparency
                  spreadRadius: 1, // How much the shadow spreads
                  blurRadius: 10, // Softness of the shadow
                  offset: const Offset(0, 5))
            ]),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bottomDetails("Home", Icons.home_outlined, 0),
              bottomDetails("Cart", Icons.shopping_cart_outlined, 1),
              bottomDetails("Orders", Icons.shopping_bag_outlined, 2),
              bottomDetails("Wallet", Icons.wallet_outlined, 3),
              bottomDetails("Profile", Icons.person_outlined, 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomDetails(String title, IconData icon, int index) {
    return GestureDetector(
      onTap: () => setState(() {
        activeIndex = index;
      }),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: activeIndex == index
                ? AppColor.secondaryColor
                : AppColor.blackColor,
          ),
          Text(title,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: activeIndex == index
                    ? AppColor.secondaryColor
                    : AppColor.blackColor,
              ))
        ],
      ),
    );
  }
}
