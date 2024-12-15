import 'package:flutter/material.dart';

import 'constant_utils.dart';

Widget indicator(Color color, double width) {
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

PreferredSizeWidget appHome(
    String greetings, String username, String? imageUrl) {
  return AppBar(
    backgroundColor: AppColor.whiteColor,
    leading: Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 0, 0),
      child: CircleAvatar(
        backgroundColor: AppColor.secondaryColorLighter,
        radius: 5,
        backgroundImage: imageUrl == null
            ? const AssetImage('assets/images/prof.png')
            : NetworkImage(imageUrl),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            greetings,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
          ),
          Text(
            username,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    actions: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), 
                blurRadius: 5, 
                offset: Offset.zero
              )
            ],
            color: AppColor.whiteColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined,
                  size: 20, color: AppColor.secondaryColorLight),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints()),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), 
                blurRadius: 5, 
                offset: Offset.zero
              )
            ],
            color: AppColor.whiteColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_outlined,
                  size: 20, color: AppColor.secondaryColorLight),
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

Widget bottomSheet() {
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
            color: Colors.black.withOpacity(0.1), // Shadow color with transparency
        spreadRadius: 1, // How much the shadow spreads
        blurRadius: 10, // Softness of the shadow
        offset: Offset(0, 5)
          )
        ]
      ),
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
  int activeIndex = 0;
  return GestureDetector(
    onTap: () => activeIndex = index,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 20,
          color: activeIndex == index ? AppColor.secondaryColor : AppColor.blackColor,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 9, 
            fontWeight: FontWeight.bold,
            color: activeIndex == index ? AppColor.secondaryColor : AppColor.blackColor,
          )
        )
      ],
    ),
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
