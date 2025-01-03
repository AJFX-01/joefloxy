import 'package:flutter/material.dart';
import 'package:joefloxy/screens/home/components/bottom_menu.dart';
import 'package:joefloxy/screens/home/components/categories.dart';
import 'package:joefloxy/screens/home/components/tab.dart';
import 'package:joefloxy/utils/widget_utils.dart';
import '../../utils/constant_utils.dart';
import '../../utils/product/product_card.dart';
import 'components/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double mainAxisSpacing = PlatformType.isIOS ? 8 : 8;
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
              const SizedBox(
                height: 10,
              ),
              // ProductCard(imageUrl: "assets/images/product/chair4.png", title: "Modern Sofa", manufacturer: "LORNEXO", price: 299.99, rating: 4.5),
              // const SizedBox(height: 10,),
              titleHeader("Categories", "", context, false),
              const SizedBox(
                height: 5,
              ),
              const CategorySection(),
              const SizedBox(
                height: 15,
              ),
              titleHeader("Most Popular", "popular", context, true),
              const TabSection(),
              SizedBox(
                height: 1000,
                child: GridView(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: mainAxisSpacing,
                    childAspectRatio: 0.6,
                  ),
                  scrollDirection: Axis.vertical,
                  children: const [
                    ProductCard(
                        imageUrl: "assets/images/product/chair4.png",
                        title: "Modern Sofa",
                        manufacturer: "LORNEXO",
                        price: 299.99,
                        rating: 4.5),
                    ProductCard(
                        imageUrl: "assets/images/product/chair3.png",
                        title: "D4 Lounge Chair",
                        manufacturer: "FERERIX",
                        price: 122.12,
                        rating: 4.5),
                    ProductCard(
                        imageUrl: "assets/images/product/chair4.png",
                        title: "Modern Sofa",
                        manufacturer: "LORNEXO",
                        price: 299.99,
                        rating: 4.5),
                    ProductCard(
                        imageUrl: "assets/images/product/chair3.png",
                        title: "D4 Lounge Chair",
                        manufacturer: "FERERIX",
                        price: 122.12,
                        rating: 4.5),
                    ProductCard(
                        imageUrl: "assets/images/product/chair4.png",
                        title: "Modern Sofa",
                        manufacturer: "LORNEXO",
                        price: 299.99,
                        rating: 4.5),
                    ProductCard(
                        imageUrl: "assets/images/product/chair3.png",
                        title: "D4 Lounge Chair",
                        manufacturer: "FERERIX",
                        price: 122.12,
                        rating: 4.5)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: const BottomMenu(
        active: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
