import 'package:flutter/material.dart';
import 'package:joefloxy/screens/profile/components/user_details.dart';
import 'package:joefloxy/utils/constant_utils.dart';
import 'package:joefloxy/utils/widget_utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../home/components/bottom_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void prevPage() => Navigator.pop(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("My Profile", context, isProfile: true),
      backgroundColor: AppColor.whiteColor,
      floatingActionButton: const BottomMenu(active: 4,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const UserDetails(
                firstName: "Lalla",
                lastName: "Zamamm",
                email: "llala0zamma@yahoo.com",
                imageurl: "assets/images/profile.png",
              ),
              const SizedBox(
                height: 30,
              ),
              profileItem("Favorites", "Sell all favorites", prevPage),
              profileItem("Payment Methods", "See or add your payment card", prevPage),
              profileItem("Settings", "Other profile settings", prevPage),
              profileItem("Help", "Contact support for assitances", prevPage),
              profileItem("Push - Notifications", "Set up push notifications", prevPage),
              profileItem("Log Out", "In case you want to log out", prevPage),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileItem(String title, String description, void Function() more, { bool isLogout = false, bool isPush = false,}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColor.secondaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColor.greyColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => more,
              child: Icon(
                MdiIcons.arrowRight,
                color: AppColor.secondaryColor,
                size: 25,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: AppColor.greyColor,
          thickness: 0.5,
        )
      ],
    );
  }
}
