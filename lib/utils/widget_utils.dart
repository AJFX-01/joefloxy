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

PreferredSizeWidget appBar(String title, BuildContext context,
    {bool isProfile = false}) {
  void editProfile() {
    Routes.navigate(context, routeName: Routes.editprofilePage);
  }

  return AppBar(
    elevation: 0,
    shadowColor: AppColor.whiteColor,
    surfaceTintColor: AppColor.whiteColor,
    backgroundColor: AppColor.whiteColor,
    leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back_rounded,
          size: 23,
          color: AppColor.blackColor,
        )),
    title: Text(
      title,
      style: TextStyle(
          color: AppColor.secondaryColor,
          fontSize: 17,
          fontWeight: FontWeight.w500),
    ),
    centerTitle: true,
    actions: [
      isProfile
          ? Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        offset: Offset.zero)
                  ],
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: IconButton(
                    onPressed: () => editProfile(),
                    icon: Icon(Icons.edit_outlined,
                        size: 20, color: AppColor.secondaryColor),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints()),
              ),
            )
          : Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.1),
                  //     blurRadius: 5,
                  //     offset: Offset.zero
                  //   )
                  // ],
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined,
                        size: 20, color: AppColor.secondaryColor),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints()),
              ),
            ),
      const SizedBox(
        width: 15,
      ),
    ],
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
            borderRadius: BorderRadius.circular(15),
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

class ProductCard extends StatefulWidget {
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
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 90),
              // Product title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 70,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: AppColor.secondaryColor,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 13,
                      ),
                      Text(
                        "(${widget.rating})",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 2),
              // Manufacturer and rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    (widget.manufacturer.toUpperCase()),
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.price}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: AppColor.secondaryColor),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColor.secondaryColor,
                    radius: 10,
                    child: Icon(
                      Icons.add,
                      color: AppColor.whiteColor,
                      size: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 15,
          child: IntrinsicHeight(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(219, 249, 246, 235),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 80,
                      ),
                      GestureDetector(
                        onTap: () => toggleFavorite(),
                        child: CircleAvatar(
                          backgroundColor:
                              isFavorite ? Colors.red : Colors.blueGrey[200],
                          radius: 10,
                          child: Icon(
                            Icons.favorite,
                            color: AppColor.whiteColor,
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.imageUrl,
                      height: 110,
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
    );
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }
}
