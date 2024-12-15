import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:joefloxy/utils/widget_utils.dart';

import '../../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword = false;
  bool _rememberMe = false;
  void prevPage() => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Log In", prevPage),
        backgroundColor: AppColor.whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Please enter your details to proceed",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 55,
                ),
                _emailTextField(),
                const SizedBox(
                  height: 10,
                ),
                _passwordTextField(),
                const SizedBox(
                  height: 30,
                ),
                _buildRememberMeSection(),
                const SizedBox(
                  height: 30,
                ),
                AppButton(
                  text: "Log In",
                  buttonHeight: 40,
                  onPressed: () => {},
                  textColor: AppColor.secondaryColor,
                  buttonColor: AppColor.secondaryColorLighter,
                  borderRadius: BorderRadius.circular(60),
                ),
                _createActionSection()
              ],
            ),
          ),
        ));
  }

  Widget _emailTextField() {
    return TextFieldContainer(
      labeltext: "Email Address",
      child: TextField(
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
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
          hintText: "example@example.com",
        ),
      ),
    );
  }

  Widget _passwordTextField() {
    return TextFieldContainer(
        labeltext: "Password",
        child: TextField(
          cursorColor: AppColor.secondaryColor,
          cursorHeight: 15,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColor.secondaryColorLight,
          ),
          textAlignVertical: const TextAlignVertical(y: 1),
          obscureText: obscurePassword,
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
            hintText: "**********",
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscurePassword = !obscurePassword;
                });
              },
              icon: Icon(
                obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColor.secondaryColorLight,
              ),
            ),
          ),
        ));
  }

  Widget _buildRememberMeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.scale(
              scale: 1,
              child: Checkbox(
                checkColor: AppColor.whiteColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: _rememberMe,
                activeColor: AppColor.secondaryColorLighter,
                onChanged: (bool? value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
              ),
            ),
            Text('Remember me',
                style: TextStyle(fontSize: 9, color: AppColor.blackColor)),
          ],
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            style: TextStyle(
              color: AppColor.secondaryColorLight,
              fontSize: 9,
            ),
            "Forgot Password?",
          ),
        ),
      ],
    );
  }

  Widget _createActionSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: 11, color: AppColor.blackColor),
        ),
        TextButton(
          onPressed: () =>
              {Routes.navigate(context, routeName: Routes.signupPage)},
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero, minimumSize: Size.zero),
          child: Text(
            style: TextStyle(
              color: AppColor.secondaryColor,
              fontSize: 11,
            ),
            "Sign Up",
          ),
        ),
      ],
    );
  }
}
