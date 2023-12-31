import 'package:flutter/foundation.dart';

class Film {
  int id;
  String title;
  DateTime release_date;
  String producer;
  String director;
  String opening_crawl;
  DateTime created;
  DateTime edited;

  Film(
      {required this.id,
      required this.title,
      required this.release_date,
      required this.producer,
      required this.director,
      required this.opening_crawl,
      required this.created,
      required this.edited});
  factory Film.fromJson(Map<String, dynamic> json) => Film(
        id: json["episode_id"],
        opening_crawl: json["opening_crawl"],
        title: json["title"],
        director: json["director"],
        producer: json["producer"],
        created: DateTime.parse(json["created"]),
        edited: DateTime.parse(json["edited"]),
        release_date: DateTime.parse(json["release_date"]),
      );
}
