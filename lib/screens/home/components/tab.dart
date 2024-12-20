import 'package:flutter/material.dart';

import '../../../utils/constant_utils.dart';

class TabSection extends StatefulWidget {
  const TabSection({super.key});

  @override
  State<TabSection> createState() => _TabSectionState();
}

class _TabSectionState extends State<TabSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isACtive = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(() {
      setState(() {
        
      }); // Rebuild the widget when the tab changes
    });
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      dividerHeight: 0,
      isScrollable: true,
      labelPadding: const EdgeInsets.symmetric(horizontal: 5),
      dividerColor: AppColor.whiteColor,
      indicatorColor: AppColor.whiteColor,
      tabAlignment: TabAlignment.start,
      onTap: (index) {
        setState(() {
          _tabController.index = index;
        });
      },
      tabs: [
        tabContainer(context, "All", 0),
        tabContainer(context, "Sofa", 1),
        tabContainer(context, "Chair", 2),
        tabContainer(context, "Table", 3),
        tabContainer(context, "Kitchen", 4),
        tabContainer(context, "Lamp", 5),
        tabContainer(context, "Cupboard", 6),
        tabContainer(context, "Vase", 7),
      ],
    );
  }

  Widget tabContainer(BuildContext context, String label, int index) {
    setState(() {
      isACtive = _tabController.index == index;
    });
    return Tab(
      child: Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isACtive ? AppColor.secondaryColor : Colors.grey[50]),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color:
                    isACtive ? AppColor.whiteColor : AppColor.secondaryColor),
          ),
        ),
      ),
    );
  }
}
