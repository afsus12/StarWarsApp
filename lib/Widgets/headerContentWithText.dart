import 'package:flutter/material.dart';
import 'package:star_wars/Models/Models.dart';
import 'package:star_wars/Utilis/myColors.dart';

import 'package:star_wars/Widgets/widgets.dart';

import 'package:intl/intl.dart';

class HeaderContentWithText extends StatelessWidget {
  final Film movie;
  const HeaderContentWithText({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        padding: const EdgeInsets.all(20),
        color: MyColors.BlackColor,
        height: screenHeight * 0.25,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: BigTitle(
                  titleText: movie.title,
                  size: 24,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                itemWithDescription(
                    description:
                        DateFormat('yyyy-MM-dd').format(movie.release_date),
                    title: "Release Date"),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                itemWithDescription(
                    description: movie.director, title: "Director"),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Expanded(
                  child: itemWithDescription(
                      description: movie.producer, title: "Producer"),
                ),
              ],
            )
          ],
        ));
  }
}
