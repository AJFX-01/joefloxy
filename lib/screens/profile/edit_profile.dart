import 'package:flutter/material.dart';
import 'package:joefloxy/utils/widget_utils.dart';

import '../../utils/constant_utils.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Edit Profile", context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            editProfilePhoto()
          ],
        ),
      ),
    );
  }

  Widget editProfilePhoto() {
    return Stack(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/images/profile.png',
            height: 90,
            width: 90,
          )
        ),
        GestureDetector(
          child:  Positioned(
            bottom: 16,
            right: 16,
            child: CircleAvatar(
              backgroundColor: AppColor.secondaryColor,
              child: Icon(Icons.camera_alt, color: AppColor.whiteColor)),
          ),
        ),
      ],
    );
  }
}
