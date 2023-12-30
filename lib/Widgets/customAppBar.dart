import 'package:flutter/material.dart';
import 'package:star_wars/Utilis/myColors.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final bool show;
  const CustomAppbar({super.key, required this.title, required this.show});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
        color: MyColors.greyColor,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              show == true
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ))
                  : SizedBox.shrink(),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
