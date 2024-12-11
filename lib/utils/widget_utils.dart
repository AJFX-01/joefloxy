import 'package:flutter/material.dart';

Widget indicator(Color color, double width) {
  return SizedBox(
    height: 7,
    width: width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(width / 2),
        ),
      ),
    ),
  );
}