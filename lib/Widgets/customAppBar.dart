import 'package:flutter/material.dart';
import 'package:star_wars/Utilis/myColors.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final bool show;
  double? size;
  CustomAppbar(
      {super.key, required this.title, required this.show, this.size = 20});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        color: MyColors.greyColor,
        child: SafeArea(
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                show == true
                    ? IconButton(
                        onPressed: () {
                          Get.toNamed("/Movies");
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 25,
                        ))
                    : const SizedBox.shrink(),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontSize: size,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
