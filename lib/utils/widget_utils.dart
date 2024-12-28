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

