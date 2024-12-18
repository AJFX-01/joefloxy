import 'package:flutter/material.dart';

class TabSection extends StatefulWidget {
  const TabSection({super.key});

  @override
  State<TabSection> createState() => _TabSectionState();
}

class _TabSectionState extends State<TabSection> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    // _tabController.addListener(() {
    //   setState(() {}); // Rebuild the widget when the tab changes
    // });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: TabBar(
          controller: _tabController,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          tabs: [
            tabContainer(context, "All"),
            tabContainer(context, "Sofa"),
            tabContainer(context, "Chair"),
            tabContainer(context, "Table"),
            tabContainer(context, "Kitchen"),
            tabContainer(context, "Lamp"),
            tabContainer(context, "Cupboard"),
            tabContainer(context, "Vase"),
          ],
        ),
      ),
    );
  }

  Widget tabContainer(BuildContext context, String label) {
    return Tab(
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
