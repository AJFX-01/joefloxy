import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:joefloxy/utils/widget_utils.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  int currentStep = 0;
  final List<Map<String, dynamic>> steps = onboarding;

  void updateSteps() {
    if (currentStep < steps.length - 1) {
      setState(() {
        currentStep++;
      });
    } else {
      // navigate to next screen
    }
  }

  void skipSteps() {
    // navigate to next screen
    setState(() {
      currentStep = steps.length - 1;
    });
  }

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
                    Positioned(
                      top: 300,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.secondaryColorLighter,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          steps[currentStep]["image"],
                          height: 500,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 25,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColor.secondaryColorLighter,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(60))),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 30,
                              width: 60,
                              margin: const EdgeInsets.only(right: 8, top: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(182, 248, 250, 243)),
                              child: TextButton(
                                  onPressed: () => skipSteps(),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Skip",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: AppColor.secondaryColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: AppColor.secondaryColor,
                                        size: 13,
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 45,
                      ),
                      Text(
                        steps[currentStep]["title"],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.secondaryColorLight),
                      ),
                      Text(
                        steps[currentStep]["description"],
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                  children: List.generate(steps.length, (i) => 
                    indicator(
                      i == currentStep ?
                      AppColor.secondaryColorLight :
                      AppColor.secondaryColorLighter,
                      i == currentStep ? 35 : 15,
                    )
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: MaterialButton(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: AppColor.secondaryColor,
                    onPressed: () => updateSteps(),
                    child: Text(
                      steps[currentStep]["buttontext"],
                      style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 13,
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
