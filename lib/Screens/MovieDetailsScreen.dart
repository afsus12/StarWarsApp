import 'package:flutter/material.dart';
import 'package:star_wars/Models/FilmModel.dart';

import 'package:star_wars/Widgets/widgets.dart';
import 'package:intl/intl.dart';

//This Screen Contains each movie Details
class MovieDetailsScreen extends StatelessWidget {
  final Film movie;
  const MovieDetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenWidth, 50),
          child: CustomAppbar(
            size: 19,
            title: movie.title,
            show: true,
          )),
      body: Column(
        children: [
          HeaderContentWithText(movie: movie),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Opening craw",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12)),
                  SizedBox(height: screenHeight * 0.003),
                  Text(
                    movie.opening_crawl.replaceAll('\n', ''),
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      itemWithDescription(
                          color: Colors.black,
                          description:
                              DateFormat('yyyy-MM-dd').format(movie.created),
                          descriptionSize: 12,
                          titleSize: 12,
                          descriptionFontWeight: FontWeight.normal,
                          titleFontWeight: FontWeight.normal,
                          title: "Created"),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      itemWithDescription(
                          color: Colors.black,
                          description:
                              DateFormat('yyyy-MM-dd').format(movie.created),
                          descriptionSize: 12,
                          descriptionFontWeight: FontWeight.normal,
                          titleFontWeight: FontWeight.normal,
                          titleSize: 12,
                          title: "Created"),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
