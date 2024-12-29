import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:joefloxy/utils/widget_utils.dart';

import 'cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Cart", context),
      backgroundColor: AppColor.whiteColor,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartItem(imageUrl: "assets/images/product/chair4.png", productname: "Modern Sofa Chair", price: 120),
              SizedBox(height: 10,),
              CartItem(imageUrl: "assets/images/product/chair3.png", productname: "D4 Lounge Chair", price: 209),
              SizedBox(height: 10,),
              CartItem(imageUrl: "assets/images/product/chair4.png", productname: "Modern Sofa Chair", price: 120),
              SizedBox(height: 10,),
              CartItem(imageUrl: "assets/images/product/chair3.png", productname: "D4 Lounge Chair", price: 209),
              SizedBox(height: 10,),
              CartItem(imageUrl: "assets/images/product/chair4.png", productname: "Modern Sofa Chair", price: 120),
              SizedBox(height: 10,),
              CartItem(imageUrl: "assets/images/product/chair3.png", productname: "D4 Lounge Chair", price: 209)
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 130,
        color: AppColor.whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Selected items (02)",
                    style: TextStyle(
                      color: AppColor.secondaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12
                    ),
                  ),
                  Text("Total: \$730",
                    style: TextStyle(
                      color: AppColor.secondaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              AppButton(
                text: "Proceed to Checkout",
                onPressed: () {},
                buttonHeight: 50,
                fontSize: 14,
                textColor: AppColor.whiteColor,
                buttonColor: AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}