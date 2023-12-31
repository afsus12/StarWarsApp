import 'package:flutter/material.dart';
import 'package:star_wars/Controllers/splashScreenController.dart';
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
     Get.put(SplashScreenController());
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Star Wars App',
      theme: ThemeData(
       
        useMaterial3: true,
      ),
routes: {
       "/": (context)=> const SplashScreen(),
       "/Movies":(context)=> const MoviesScreen(),

},
    );
  }
}