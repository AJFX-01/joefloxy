import 'package:flutter/material.dart';
import 'package:joefloxy/screens/auth/login.dart';
import 'package:joefloxy/screens/carts/cart.dart';
import 'package:joefloxy/screens/onboarding.dart';
import 'package:joefloxy/screens/splashscrren.dart';

import '../screens/auth/signup.dart';
import '../screens/home/home.dart';
import '../screens/profile/edit_profile.dart';
import '../screens/profile/profile.dart';


class Routes {
  static const splashPage = '/';
  static const onboardPage = '/onboard';
  static const loginPage = '/login';
  static const signupPage = '/signup';


  static const homePage = '/home';
  static const cartPage = '/cart';
  static const orderPage = '/order';
  static const profilePage = '/profile';
  static const walletPage = '/wallet';


  static const sofaPage = '/sofa';
  static const chairPage = '/chair';
  static const tablePage = '/table';
  static const kitchenPage = '/kitchen';
  static const lampPage = '/lamp';
  static const wardrobePage = '/wardrobe';
  static const vasePage = '/vase';
  static const othersPage = '/others';

  static const editprofilePage = '/editprofile';

  static final Map<String, Widget Function(BuildContext)> pages = {
    splashPage: (context) => const SplashScreen(),
    onboardPage: (context) => const OnboardingPage(),
    loginPage: (context) => const LoginPage(),
    signupPage: (context) => const SignUpPage(),

    homePage: (context) => const HomePage(),
    profilePage: (context) => const ProfilePage(),
    cartPage: (context) => const CartPage(),

    editprofilePage: (context) => const EditProfilePage(),
  };

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    if (settings.name!.isEmpty) return null;
    var path = settings.name;
    return MaterialPageRoute(settings: settings, builder: pages[path]!);
  }

  static navigate(BuildContext context,
      {required String routeName,
      Object? arguments,
      bool isNewTask = false,
      NavigatorState? navigator}) {
    if (navigator != null) {
      if (isNewTask) {
        return navigator.restorablePushNamedAndRemoveUntil(
            routeName, (Route route) => false,
            arguments: arguments);
      }
      return navigator.restorablePushNamed(
        routeName,
        arguments: arguments,
      );
    } else {
      if (isNewTask) {
        return Navigator.restorablePushNamedAndRemoveUntil(
          context,
          routeName,
          (Route route) => false,
          arguments: arguments,
        );
      }
      return Navigator.pushNamed(context, routeName, arguments: arguments);
    }
  }
}
