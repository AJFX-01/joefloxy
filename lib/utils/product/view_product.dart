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
              ),
              const SizedBox(height: 30,), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Modern Sofa Chair",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColor.secondaryColor,
                    ),
                  ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Text(
                          "(5.0)",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              const SizedBox(height: 30,),
              Text(
                "This modern sofa chair features a sleek design and is perfect for those looking for a cozy, comfortable and stylish solution to their living space. The chair is crafted from a high-quality leather and has a clean finish.",
                style: TextStyle(
                  fontSize: 11,
                  color: AppColor.greyColor
                  ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Price: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      Text(
                        "\$120.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ],
                  ), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add_outlined,
                        size: 15,
                        color: AppColor.secondaryColor,
                      ), 
                      Text("5", style: TextStyle(
                        color: AppColor.secondaryColor,
                        fontSize: 12,
                      ),),
                      Icon(
                        Icons.remove_circle_outline,
                        size: 15,
                        color: AppColor.secondaryColor,
                      ),
                    ],
                  )
                ],
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
