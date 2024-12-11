import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/onboard1.jpg'),
                Positioned(
                  top: -200,
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: TextButton(onPressed: () {}, 
                      child: const Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                        children: [
                      Text("Skip"),
                      Icon(Icons.arrow_right)
                    ],) ),
                  ),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(2))
                  ),
                )
              ],
            ),
            const SizedBox( height: 40,),
            const Text("Perfect Dream House for you",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ],
        ),
      ),
    );
  }
}