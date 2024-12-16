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
            category("Sofa", Colors.pink[50], Icons.chair, Colors.pink[800]),
            category("Chair", Colors.blue[50], Icons.chair_alt, Colors.blue[800]),
            category("Table", Colors.amber[50], Icons.table_bar, Colors.amber[800]),
            category("Kitchen", Colors.cyan[50], Icons.kitchen, Colors.cyan[800])
          ],
        ),
       const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            category("Lamps", Colors.green[50], Icons.light, Colors.green[800]),
            category("Wardrobe", Colors.purple[50], Icons.shelves, Colors.purple[800]),
            category("Vase", Colors.yellow[50], Icons.leaf, Colors.yellow[800]),
            category("Others", Colors.amberAccent[100], Icons.widgets, Colors.amberAccent[700])
          ],
        )
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
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor
            ),
            child: Icon(icon, size: 25, color: iconColor,),
          ),
          const SizedBox(height: 12),
          Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.blackColor)),
        ],
      ),
    );
  }
}
