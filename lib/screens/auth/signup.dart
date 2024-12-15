import 'package:flutter/material.dart';
import 'package:joefloxy/utils/widget_utils.dart';

import '../../utils/constant_utils.dart';
import '../../utils/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool showPassword = false;
  bool showConfirmPassword = false;

  void showPasswordFn() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void showConfirmPasswordFn() {
    setState(() {
      showConfirmPassword = !showConfirmPassword;
    });
  }

  void prevPage() => Navigator.pop(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          "Create Account",
          prevPage
        ),
        backgroundColor: AppColor.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                _textField("First Name", "Alexander", TextInputType.text),
                const SizedBox(
                  height: 10,
                ),
                _textField("Last Name", "Kolarovshi", TextInputType.text),
                const SizedBox(
                  height: 10,
                ),
                _textField(
                    "Email", "example@exmaple.com", TextInputType.emailAddress),
                const SizedBox(
                  height: 10,
                ),
                _textField("Mobile Number", "07061881943", TextInputType.phone),
                const SizedBox(
                  height: 10,
                ),
                _textField(
                    "Date OF Birth", "DD / MM / YYYY", TextInputType.datetime),
                const SizedBox(
                  height: 10,
                ),
                _passwordTextField(
                  "Password",
                  "********",
                  showPasswordFn,
                  showPassword,
                ),
                const SizedBox(
                  height: 10,
                ),
                _passwordTextField("Confirm Password", "********",
                    showConfirmPasswordFn, showConfirmPassword),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "By continuing, you agree to",
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColor.blackColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Terms of Use and Privacy Policy",
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                AppButton(
                  text: "Sign Up",
                  onPressed: () {},
                  buttonHeight: 40,
                  textColor: AppColor.whiteColor,
                  buttonColor: AppColor.buttonColor,
                  borderRadius: BorderRadius.circular(60),
                ),
                const SizedBox(
                  height: 5,
                ),
                _loginActionSection()
              ],
            ),
          ),
        ));
  }

  Widget _textField(String label, String hintext, TextInputType? inputType) {
    return TextFieldContainer(
      labeltext: label,
      child: TextField(
        obscureText: false,
        keyboardType: inputType,
        cursorColor: AppColor.secondaryColor,
        cursorHeight: 15,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColor.secondaryColorLight,
        ),
        textAlignVertical: const TextAlignVertical(y: 1),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColor.secondaryColorLight,
          ),
          hintText: hintext,
        ),
      ),
    );
  }

  Widget _passwordTextField(String label, String hintext,
      void Function() onPress, bool showPassword) {
    return TextFieldContainer(
        labeltext: label,
        child: TextField(
          cursorColor: AppColor.secondaryColor,
          cursorHeight: 15,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColor.secondaryColorLight,
          ),
          textAlignVertical: const TextAlignVertical(y: 1),
          obscureText: showPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.secondaryColorLight,
            ),
            hintText: hintext,
            suffixIcon: IconButton(
              onPressed: onPress,
              icon: Icon(
                showPassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColor.secondaryColorLight,
              ),
            ),
          ),
        ));
  }

  Widget _loginActionSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: TextStyle(fontSize: 11, color: AppColor.blackColor),
        ),
        TextButton(
          onPressed: () =>
              {Routes.navigate(context, routeName: Routes.loginPage)},
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero, minimumSize: Size.zero),
          child: Text(
            style: TextStyle(
              color: AppColor.secondaryColor,
              fontSize: 11,
            ),
            "Log In",
          ),
        ),
      ],
    );
  }
}
