import 'package:http/http.dart' as http;

//api requests here
const String apiUrl = "https://swapi.dev/api/";

class UserServices {
  Future<http.Response> getAllFilms() async {
    return http.get(Uri.parse('${apiUrl}films/'),
        headers: {"Accept": "application/json"});
  }

//i can use this approch to show a movie details but its not neccessary because i already stored all films in a list
  Future<http.Response> getOneFilm(int id) async {
    return http.get(Uri.parse('${apiUrl}films/$id/'),
        headers: {"Accept": "application/json"});
  }
}
