import 'package:flutter/material.dart';
import 'package:joefloxy/utils/bottom_menu.dart';
import 'package:joefloxy/utils/widget_utils.dart';

import '../../utils/constant_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: appHome("Good Morning👋", "Nadia McMiller", null),
      body: SingleChildScrollView(
        child: Center(
          child: Text("Welcome"),
        ),
      ),
      floatingActionButton: const BottomMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}