import 'package:flutter/material.dart';
import 'package:joefloxy/screens/home/components/bottom_menu.dart';
import 'package:joefloxy/screens/home/components/categories.dart';
import 'package:joefloxy/utils/widget_utils.dart';
import '../../utils/constant_utils.dart';
import 'components/appbar.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              searchBar(),
              const SizedBox(height: 20,),
              const CategorySection(),
              const SizedBox(height: 20,),
              titleHeader("Most Popular", "popular", context)
            ],
          ),
        ),
      ),
      floatingActionButton: const BottomMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}