import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';


class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            category("Sofa", Colors.pink[200], Icons.chair, Colors.pink[800]),
            category("Chair", Colors.blue[200], Icons.chair_alt, Colors.blue[800]),
            category("Table", Colors.amber[200], Icons.table_bar, Colors.amber[800]),
            category("Kitchen", Colors.cyan[200], Icons.kitchen, Colors.cyan[800])
          ],
        ),
       const SizedBox(height: 20,),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [],
        // )
      ],
    );
  }


  Widget category(String title, Color? backgroundColor, IconData icon, Color? iconColor) {
    return GestureDetector(
      onTap: () => {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor
            ),
            child: Icon(icon, size: 24, color: iconColor,),
          ),
          const SizedBox(height: 12),
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColor.blackColor)),
        ],
      ),
    );
  }
}
