import 'package:flutter/material.dart';
import 'package:star_wars/Utilis/myColors.dart';

class HeaderContent extends StatelessWidget {
  final int number;
  const HeaderContent({super.key, required this.number});

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
              child: Center(
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/star_wars.png')),
              ),
            ),
            Text(
              "Total $number Movies",
              style: const TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
