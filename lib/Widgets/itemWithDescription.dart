import 'package:flutter/material.dart';
import 'package:star_wars/Utilis/myColors.dart';

class itemWithDescription extends StatelessWidget {
  final String title;
  final String description;
  final Color? color;
  final double? titleSize;
  final FontWeight? titleFontWeight;
  final FontWeight? descriptionFontWeight;
  final double? descriptionSize;
  const itemWithDescription(
      {super.key,
      required this.description,
      required this.title,
      this.color = MyColors.textColor,
      this.titleSize = 10,
      this.titleFontWeight = FontWeight.w200,
      this.descriptionFontWeight = FontWeight.w300,
      this.descriptionSize = 12});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: titleSize, color: color, fontWeight: titleFontWeight),
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: descriptionSize,
            color: color,
            fontWeight: descriptionFontWeight,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
