import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.whiteColor
          ),
          child: Image.asset(
            'assets/images/joefloxy.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}