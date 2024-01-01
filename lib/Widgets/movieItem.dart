import 'package:flutter/material.dart';
import 'package:star_wars/Models/Models.dart';
import 'package:star_wars/Utilis/myColors.dart';
import 'package:star_wars/Widgets/widgets.dart';

import 'package:intl/intl.dart';

class MovieItem extends StatelessWidget {
  final Film film;
  const MovieItem({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          color: MyColors.BlackColor,
          height: screenHeight * 0.18,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigTitle(
                    titleText: film.title,
                  ),
                  itemWithDescription(
                      description:
                          DateFormat('yyyy-MM-dd').format(film.release_date),
                      title: "Release date")
                ],
              ),
              SizedBox(
                height: screenHeight * 0.003,
              ),
              Row(
                children: [
                  itemWithDescription(
                      description: film.director, title: "Director"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: itemWithDescription(
                        description: film.producer, title: "Producer"),
                  ),
                ],
              ),
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: double.infinity), // Ensure no width constraint
                  child: Text(
                    film.opening_crawl.replaceAll("\n",
                        " "), //the text contains new lines so i removed them
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: MyColors.textColor,
                      fontSize: 12,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.003,
        ),
      ],
    );
  }
}
