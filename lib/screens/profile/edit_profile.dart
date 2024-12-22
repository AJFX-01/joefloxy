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
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            editProfilePhoto(),
            const SizedBox(height: 15,),
            labelContainer(),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  _textField("First Name", "LLama", TextInputType.text),
                  _textField("Last Name", "Jamaa", TextInputType.text),
                  _textField("Email Address", "llamajamaa@gmail.com", TextInputType.emailAddress),
                  _textField("Address", "123 Main St, City, State, Zip", TextInputType.streetAddress),
                  _textField("Phone Number", "090617711234", TextInputType.phone),
                  _textField("Date Of Birth", "01 / 02 / 1997", TextInputType.datetime),
                  const SizedBox(height: 40,),
                  AppButton(
                  text: "Save",
                  onPressed: () {},
                  buttonHeight: 50,
                  fontSize: 14,
                  textColor: AppColor.whiteColor,
                  buttonColor: AppColor.secondaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                const SizedBox(height: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget editProfilePhoto() {
    return Center(
      child: Stack(
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/profile.png',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            )
          ),
          Positioned(
            bottom: 1,
            left: 80,
            child: GestureDetector(
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColor.secondaryColor,
                child: Icon(
                  size: 20,
                  Icons.camera_alt_outlined,
                  color: AppColor.whiteColor
                )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textField(String label, String hintext, TextInputType? inputType) {
    return TextFieldContainer(
      labeltext: label,
      child: TextField(
        obscureText: false,
        keyboardType: inputType,
        cursorColor: AppColor.secondaryColor,
        cursorHeight: 15,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColor.secondaryColorLight,
        ),
        textAlignVertical: const TextAlignVertical(y: 1),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColor.blackColor,
          ),
          hintText: hintext,
        ),
      ),
    );
  }

  Widget labelContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 60,
      color: AppColor.secondaryColorLighter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "LLama Jamma",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: AppColor.blackColor,
            ),
          ),
          Text(
            "llamajamma@gmail.com",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: AppColor.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
