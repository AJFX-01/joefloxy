import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: Text("Welcome to login"),
      ),
    );
  }
}