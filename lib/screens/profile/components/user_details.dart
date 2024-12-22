import 'package:flutter/material.dart';
import 'package:joefloxy/utils/constant_utils.dart';

class UserDetails extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String imageurl;
  const UserDetails(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.imageurl,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageurl,
            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
        ),
        const SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$firstName $lastName",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: AppColor.secondaryColor
            ),),
            const SizedBox(height: 4,),
            Text(email, style: TextStyle( color: AppColor.secondaryColor, fontSize: 10, fontWeight: FontWeight.w700 )),
            const SizedBox(height: 4,),
            Text("Premiuim Memeber", style: TextStyle(color: AppColor.greyColor, fontSize: 9),)
          ],
        ),
      ],
    );
  }
}
