import 'package:flutter/material.dart';
import 'package:star_wars/Controllers/AppController.dart';
import 'package:star_wars/Screens/Screens.dart';

import 'package:get/get.dart';
import 'package:star_wars/Widgets/widgets.dart';

//This Screen Contains All movies List
class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    AppController globalController = Get.find<AppController>();
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenWidth, 50),
          child: CustomAppbar(
            title: "Think-it Star Wars",
            show: false,
          )),
      body: Column(
        children: [
          Obx(
            () => HeaderContentWithImage(
              number: globalController.totalMovies.value,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Flexible(
            child: SizedBox(
              child: ListView.builder(
                  itemCount: globalController.listMovies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          Get.to(MovieDetailsScreen(
                              movie: globalController.listMovies[index]));
                        },
                        child: MovieItem(
                            film: globalController.listMovies[index]));
                  }),
            ),
          )

          /*  ListView.builder(itemBuilder:) */
        ],
      ),
    );
  }
}
