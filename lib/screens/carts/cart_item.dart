import 'package:flutter/material.dart';

import '../../utils/constant_utils.dart';

class CartItem extends StatefulWidget {
  final String imageUrl;
  final String productname;
  final double price;
  const CartItem(
      {required this.imageUrl,
      required this.productname,
      required this.price,
      super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool _selectedItem = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.secondaryColor!, width: 2),
                    shape: BoxShape.circle,
                  ),
                child: Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                    checkColor: AppColor.secondaryColor,
                    activeColor: AppColor.whiteColor,
                    value: _selectedItem,
                    onChanged: (bool? value) => {
                      setState(() {
                        _selectedItem = value!;
                      })
                    },
                    side: BorderSide.none,
                    shape: const CircleBorder(
                        side: BorderSide.none),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(219, 247, 245, 238),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey[300]!, width: 0.5)
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
              const SizedBox(width: 20,),
              SizedBox(
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productname,
                      style: TextStyle(
                          fontSize: 11,
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$${widget.price.toString()}",
                      style: TextStyle(
                          fontSize: 11,
                          color: AppColor.greyColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 15,),
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
              ),
        ],
      ),
    );
  }
}
