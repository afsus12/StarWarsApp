import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//First Screen (Splash Screen Containing the starWars logo and think it logo svg)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/star_wars.png')),
              ),
            ),
            SvgPicture.asset(
              "assets/images/thinkit-logo.svg",
              fit: BoxFit.cover,
              width: screenWidth * 0.3,
            ),
          ],
        ),
      ),
    );
  }
}
