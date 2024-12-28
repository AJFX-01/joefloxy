import 'dart:io';

import 'package:flutter/material.dart';
import 'package:joefloxy/models/bottom_menu_model.dart';

import 'routes.dart';

class AppColor {
  // static Color secondaryColor = const Color.fromARGB(217, 60, 227, 60);
  // static Color secondaryColorLight = const Color.fromARGB(255, 109, 249, 109);
  // static Color secondaryColorLighter = const Color.fromARGB(255, 209, 246, 209);
  static Color? secondaryColor = Colors.green[700];
  static Color? secondaryColorLight = Colors.green[300];
  static Color? secondaryColorLighter = Colors.green[50];
  static Color primaryColor = const Color.fromARGB(255, 59, 134, 232);

  static Color whiteColor = const Color.fromARGB(255, 255, 255, 255);
  static Color blackColor = Colors.black;
  static Color buttonColor = const Color.fromARGB(102, 131, 253, 131);

  static Color? greyColor = Colors.grey;
}

const onboarding = [
  {
    "title": 'Transform Spaces',
    "description":
        'Reimagine your home like never before. Whether you\'re into modern minimalism, classic elegance, or cozy aesthetics, this app offers intuitive tools to help you design your ideal living space. Get professional tips, explore trending styles, and bring your vision to life with guided assistance',
    "image": 'assets/images/onboard1.png',
    "buttontext": 'Next'
  },
  {
    "title": 'Design Your Dream Space',
    "description":
        'Say goodbye to overwhelming design decisions. Our app simplifies interior decorating by letting you explore curated design ideas, mix and match furniture, and plan layouts effortlessly. From quick makeovers to complete transformations, creating your dream home has never been this seamless',
    "image": 'assets/images/onboard.png',
    "buttontext": 'Next'
  },
  {
    "title": 'Your Home, Your Canvas',
    "description":
        'Turn your living space into a masterpiece with interactive features that put you in control. Visualize your ideas in real-time, adjust layouts, swap furniture, and experiment with colors—all with just a few taps. Share your designs, get feedback, and refine your perfect space without boundaries.',
    "image": 'assets/images/onboard2.png',
    "buttontext": 'Next'
  },
  {
    "title": 'Virtual Decor at Your Fingertips',
    "description":
        'Take the guesswork out of home decorating. Use our cutting-edge AR tools to preview furniture, color schemes, and layouts directly in your room. See how your vision comes together before making a single purchase, ensuring every choice is perfect for your space.',
    "image": 'assets/images/onboard3.png',
    "buttontext": 'Get Started'
  }
];

List<BottomMenuModel> bottomMenu = [
  BottomMenuModel(
    icon: Icons.home_outlined,
    title: 'Home',
    route: Routes.homePage,
  ),
  BottomMenuModel(
    icon: Icons.shopping_cart_outlined,
    title: 'Cart',
    route: Routes.cartPage,
  ),
  BottomMenuModel(
    icon: Icons.shopping_bag_outlined,
    title: 'Orders',
    route: Routes.orderPage,
  ),
  BottomMenuModel(
    icon: Icons.wallet_outlined,
    title: 'Wallet',
    route: Routes.walletPage,
  ),
  BottomMenuModel(
    icon: Icons.person_outlined,
    title: 'Profile',
    route: Routes.profilePage,
  )
];

class PlatformType {
  static bool isAndriod = Platform.isAndroid;
  static bool isIOS = Platform.isIOS;
}
