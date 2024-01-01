import 'package:flutter/material.dart';
import 'package:star_wars/Controllers/AppBinding.dart';
import 'package:star_wars/Controllers/AppController.dart';
import 'package:star_wars/Models/Models.dart';

import './Screens/Screens.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //INItilisation of film model
    Film movie = new Film(
        id: 0,
        title: '',
        release_date: DateTime.now(),
        producer: "",
        director: "",
        opening_crawl: "",
        created: DateTime.now(),
        edited: DateTime.now());
    //initialisation of our App controller
    Get.put(AppController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Wars App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: "/", page: () => SplashScreen(), binding: AppBinding()),
        GetPage(
          name: "/Movies",
          page: () => MoviesScreen(),
        ),
        GetPage(
          name: "/Details",
          page: () => MovieDetailsScreen(
            movie: movie,
          ),
        )
      ],
    );
  }
}
