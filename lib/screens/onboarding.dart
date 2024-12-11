import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:joefloxy/utils/widget_utils.dart';

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
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/onboard1.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 20,),
                        TextButton(onPressed: () {}, 
                          child: Row(  
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                          Text("Skip", style: TextStyle(
                            fontSize: 12,
                            color: AppColor.primaryColor,
                          ),),
                          Icon(Icons.arrow_right_alt_sharp, color: AppColor.primaryColor,)
                        ],) ),
                      ],
                    ),
                    // Container(
                    //   height: 40,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: AppColor.secondaryColor,
                    //     borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(2))
                    //   ),
                    // )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox( height: 45,),
                      Text(
                        "Perfect Dream House for you",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("The fabric chairs with curved and straight backs makes you to stay in",
                      style: TextStyle(
                        fontSize: 12,
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              indicator(AppColor.secondaryColor, 30),
              indicator(AppColor.secondaryColorLight, 15),
              indicator(AppColor.secondaryColorLight, 15),
              indicator(AppColor.secondaryColorLight, 15),
            ],
                    ),
                    SizedBox(
            height: 30,
            width: 100,
            child: MaterialButton(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              color: AppColor.secondaryColor,
              onPressed: () => {},
              child: Text(
                "Next",
                style: TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
                    )
                  ],
              ),
          ),
        ],
      ),
    );
  }
}