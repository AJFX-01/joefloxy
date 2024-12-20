import 'package:flutter/material.dart';
import 'package:joefloxy/screens/home/components/bottom_menu.dart';
import 'package:joefloxy/screens/home/components/categories.dart';
import 'package:joefloxy/screens/home/components/tab.dart';
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
              const SizedBox(height: 10,),
              titleHeader("Categories", "", context, false),
              const SizedBox(height: 5,),
              const CategorySection(),
              const SizedBox(height: 15,),
              titleHeader("Most Popular", "popular", context, true),
              const TabSection(),
              ListView(
                children: [
                  ProductCard(imageUrl: imageUrl, title: title, manufacturer: manufacturer, price: price, rating: rating)
                  ProductCard(imageUrl: imageUrl, title: title, manufacturer: manufacturer, price: price, rating: rating)
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const BottomMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}