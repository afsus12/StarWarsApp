import 'package:flutter/material.dart';
import 'package:star_wars/Utilis/myColors.dart';

class BigTitle extends StatelessWidget {
  String titleText;
  double? size;
  BigTitle({super.key, required this.titleText, this.size = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w400,
          color: MyColors.textColor),
    );
  }
}
