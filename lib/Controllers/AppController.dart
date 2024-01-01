import 'dart:convert';

import 'package:get/get.dart';
import 'package:star_wars/Utilis/UserServices.dart';

import '../Models/models.dart';

class AppController extends GetxController {
  //initialisation of our variables
  var listMovies = <Film>[].obs;

  var context = UserServices();
  var totalMovies = 0.obs;
  var loading = true.obs;
  //Saving Movies In A list
  Future getAllFilms() async {
    var response = await context.getAllFilms();

    if (response.statusCode == 200 && response.body.isNotEmpty) {
      var fetchedBody = json.decode(response.body);

      totalMovies.value = fetchedBody["count"];
      listMovies.value = (fetchedBody["results"] as List)
          .map((value) => Film.fromJson(value))
          .toList();
      loading.value = false;
    }
  }

  @override
  void onInit() async {
    await getAllFilms();

    Get.offNamed("/Movies");

    super.onInit();
  }
}
