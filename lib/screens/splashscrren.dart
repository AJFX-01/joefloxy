import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          child: Image.asset(
            'assets/images/joefloxy.jpeg',
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}