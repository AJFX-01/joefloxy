import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:joefloxy/utils/widget_utils.dart';

import '../utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                'assets/images/landing.jpg',
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Turn your vision into reality with curated decor ideas, furniture suggestions, and room planning tools.',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  AppButton(
                    text: "Log In",
                    onPressed: () => Routes.navigate(context, routeName: Routes.loginPage),
                    buttonColor: AppColor.buttonColor,
                    buttonHeight: 40,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Divider()),
                      Text(
                        "OR",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider()),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppButton(
                    text: "Sign Up",
                    onPressed: () => Routes.navigate(context, routeName: Routes.onboardPage),
                    buttonColor: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(60),
                    buttonHeight: 45,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
