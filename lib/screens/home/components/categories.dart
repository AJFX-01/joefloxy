import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../utils/routes.dart';


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
            category("Table", Colors.amber[50], Icons.table_restaurant, Colors.amber[800]),
            category("Kitchen", Colors.cyan[50], Icons.kitchen, Colors.cyan[800])
          ],
        ),
       const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            category("Lamps", Colors.green[50], MdiIcons.lamps, Colors.green[800]),
            category("Wardrobe", Colors.purple[50], Icons.shelves, Colors.purple[800]),
            category("Vase", Colors.teal[50], MdiIcons.flowerPollen, Colors.teal[800]),
            category("Others", Colors.red[100], Icons.widgets, Colors.red[800])
          ],
        )
      ],
    );
  }


  Widget category(String title, Color? backgroundColor, IconData icon, Color? iconColor,) {
    return GestureDetector(
      onTap: () => {
        Routes.navigate(context, routeName: "/$title")
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.blackColor)),
        ],
      ),
    );
  }
}
