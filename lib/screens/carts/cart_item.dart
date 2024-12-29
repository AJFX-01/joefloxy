import 'package:flutter/material.dart';

import '../../utils/constant_utils.dart';

class CartItem extends StatefulWidget {
  final String imageUrl;
  final String productname;
  final double price;
  const CartItem({required this.imageUrl, required this.productname, required this.price, super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: false,
            onChanged: (value) => {},
            side: BorderSide(color: AppColor.secondaryColor!, width: 2),
            shape:
                CircleBorder(side: BorderSide(color: AppColor.secondaryColor!)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(219, 249, 246, 235),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.imageUrl,
                height: 80,
                width: 80,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.productname, 
                style: TextStyle(
                  fontSize: 11,
                  color: AppColor.secondaryColor,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 5,),
                Text("\$${widget.price.toString()}", 
                  style: TextStyle(
                    fontSize: 11,
                    color: AppColor.greyColor,
                    fontWeight: FontWeight.w600
                  ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.add_circle_outline_outlined,
                size: 18,
                color: AppColor.secondaryColor,
              ),
              const SizedBox(width: 10),
              Text(
                "5",
                style: TextStyle(
                  color: AppColor.secondaryColor,
                  fontSize: 12,
                ),
              ),
                const SizedBox(width: 10),
              Icon(
                Icons.remove_circle_outline_outlined,
                size: 18,
                color: AppColor.secondaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
