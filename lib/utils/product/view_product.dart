import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:joefloxy/utils/widget_utils.dart';

class ViewProductScreen extends StatefulWidget {
  const ViewProductScreen({super.key});

  @override
  State<ViewProductScreen> createState() => _ViewProductScreenState();
}

class _ViewProductScreenState extends State<ViewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        "",
        context,
      ),
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red ,
                    radius: 15,
                    child: Icon(
                      Icons.favorite,
                      color: AppColor.whiteColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Center(
                child: ClipRRect(
                  child: Image.asset(
                    "assets/images/product/chair4.png",
                    fit: BoxFit.cover,
                    height: 250,
                    width: 250,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: AppButton(
          text: "Add to cart",
          onPressed: () {},
          buttonHeight: 50,
          fontSize: 14,
          textColor: AppColor.whiteColor,
          buttonColor: AppColor.secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
