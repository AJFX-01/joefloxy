import 'package:flutter/material.dart';

import '../../../utils/constant_utils.dart';

PreferredSizeWidget appHome(
    String greetings, String username, String? imageUrl) {
  return AppBar(
    backgroundColor: AppColor.whiteColor,
    leading: Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 0, 0),
      child: CircleAvatar(
        backgroundColor: AppColor.secondaryColorLighter,
        radius: 5,
        backgroundImage: imageUrl == null
            ? const AssetImage('assets/images/prof.png')
            : NetworkImage(imageUrl),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            greetings,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
          ),
          Text(
            username,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    actions: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), 
                blurRadius: 5, 
                offset: Offset.zero
              )
            ],
            color: AppColor.whiteColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined,
                  size: 20, color: AppColor.secondaryColorLight),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints()),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), 
                blurRadius: 5, 
                offset: Offset.zero
              )
            ],
            color: AppColor.whiteColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_outlined,
                  size: 20, color: AppColor.secondaryColorLight),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints()),
        ),
      ),
      const SizedBox(
        width: 15,
      ),
    ],
  );
}