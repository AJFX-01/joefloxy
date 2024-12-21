import 'package:flutter/material.dart';

import 'constant_utils.dart';
import 'routes.dart';

Widget indicator(Color? color, double width) {
  return SizedBox(
    height: 7,
    width: width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(width / 2),
        ),
      ),
    ),
  );
}

PreferredSizeWidget appBar(String title, void Function() back) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColor.whiteColor,
    leading: IconButton(
        onPressed: back,
        icon: Icon(
          Icons.arrow_back_rounded,
          size: 23,
          color: AppColor.blackColor,
        )),
    title: Text(
      title,
      style: TextStyle(
          color: AppColor.secondaryColorLight,
          fontSize: 18,
          fontWeight: FontWeight.w500),
    ),
    centerTitle: true,
  );
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final String labeltext;

  const TextFieldContainer({
    super.key,
    required this.child,
    required this.labeltext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labeltext,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
        Container(
          height: 40,
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: AppColor.secondaryColorLighter,
            borderRadius: BorderRadius.circular(25),
          ),
          child: child,
        ),
      ],
    );
  }
}

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontSize;
  final double? buttonWidth;
  final double? buttonHeight;
  final BorderRadiusGeometry? borderRadius;
  final BorderSide? borderSide;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = Colors.green,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    this.buttonWidth,
    this.buttonHeight = 50.0,
    this.borderSide,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity, // Providing default width
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius!,
            side: borderSide ?? BorderSide.none,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

Widget titleHeader(
    String title, String? route, BuildContext context, bool showButton) {
  return SizedBox(
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: AppColor.secondaryColor,
              )),
          showButton
              ? TextButton(
                  onPressed: () =>
                      {Routes.navigate(context, routeName: route!)},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, minimumSize: Size.zero),
                  child: Text(
                    style: TextStyle(
                      color: AppColor.secondaryColor,
                      fontSize: 13,
                    ),
                    "See All",
                  ),
                )
              : const Text("")
        ],
      ));
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String manufacturer;
  final double price;
  final double rating;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.manufacturer,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Stack(
        children: [
          Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
           margin: const EdgeInsets.fromLTRB(8, 80, 8, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
              const SizedBox(height: 90),
                // Product title
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                // Manufacturer and rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      manufacturer,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        Text(
                          "($rating)",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Price and add-to-cart button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: AppColor.secondaryColor
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.secondaryColor,
                      radius: 16,
                      child:  Icon(
                        Icons.add,
                        color: AppColor.whiteColor,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 243, 237),
                  borderRadius: BorderRadius.circular(12),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.2),
                  //     spreadRadius: 2,
                  //     blurRadius: 5,
                  //     offset: const Offset(0, 2),
                  //   ),
                  // ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Image and favorite button
                    Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey[200],
                        radius: 10,
                        child: Icon(
                          Icons.favorite,
                          color: AppColor.whiteColor,
                          size: 14,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imageUrl,
                        height: 120,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
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



// const SizedBox(height: 8),
              // // Product title
              // Text(
              //   title,
              //   style: const TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 14,
              //     color: Colors.black,
              //   ),
              // ),
              // const SizedBox(height: 4),
              // // Manufacturer and rating
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       manufacturer,
              //       style: TextStyle(
              //         color: Colors.grey[600],
              //         fontSize: 12,
              //       ),
              //     ),
              //     Row(
              //       children: [
              //         const Icon(
              //           Icons.star,
              //           color: Colors.amber,
              //           size: 16,
              //         ),
              //         Text(
              //           "($rating)",
              //           style: TextStyle(
              //             color: Colors.grey[600],
              //             fontSize: 12,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 8),
              // // Price and add-to-cart button
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "\$$price",
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         fontSize: 16,
              //         color: AppColor.secondaryColor
              //       ),
              //     ),
              //     CircleAvatar(
              //       backgroundColor: AppColor.secondaryColor,
              //       radius: 16,
              //       child:  Icon(
              //         Icons.add,
              //         color: AppColor.whiteColor,
              //         size: 18,
              //       ),
              //     ),
              //   ],
              // ),