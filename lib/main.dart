import 'package:flutter/material.dart';
import 'package:star_wars/Screens/SplashScreen.dart';
import 'package:get/get.dart';
import 'package:star_wars/Utilis/myColors.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Star Wars App',
      theme: ThemeData(
       
        useMaterial3: true,
      ),
routes: {
       "/": (context)=> SplashScreen(),

},
    );
  }
}