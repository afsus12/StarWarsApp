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
}
