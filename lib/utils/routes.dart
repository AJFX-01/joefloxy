import 'package:flutter/material.dart';
import 'package:joefloxy/screens/auth/login.dart';
import 'package:joefloxy/screens/onboarding.dart';
import 'package:joefloxy/screens/splashscrren.dart';

import '../screens/auth/signup.dart';

class Routes {
  static const splashPage = '/';
  static const onboardPage = '/onboard';
  static const loginPage = '/login';
  static const signupPage = '/signup';

  static final Map<String, Widget Function(BuildContext)> pages = {
    splashPage: (context) => const SplashScreen(),
    onboardPage: (context) => const OnboardingPage(),
    loginPage: (context) => const LoginPage(),
    signupPage: (context) => const SignUpPage(),
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
