import 'package:http/http.dart' as http;

const String apiUrl = "https://swapi.dev/api/";

class UserServices {
  Future<http.Response> getAllFilms() async {
    return http.get(Uri.parse('${apiUrl}films/'),
        headers: {"Accept": "application/json"});
  }

  Future<http.Response> getOneFilm(int id) async {
    return http.get(Uri.parse('${apiUrl}films/$id/'),
        headers: {"Accept": "application/json"});
  }
}
