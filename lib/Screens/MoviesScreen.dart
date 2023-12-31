import 'package:flutter/material.dart';
import 'package:star_wars/Widgets/customAppBar.dart';
import 'package:star_wars/Widgets/headerContent.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenWidth, 55),
          child: const CustomAppbar(
            title: "Think-it Star Wars",
            show: false,
          )),
      body: const Column(
        children: [
          HeaderContent(
            number: 6,
          ),
        ],
      ),
    );
  }
}
