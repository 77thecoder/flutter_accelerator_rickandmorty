import 'dart:convert';

Episode episodeFromJson(String str) => Episode.fromJson(json.decode(str));

String episodeToJson(Episode data) => json.encode(data.toJson());

class Episode {
  Episode({
    required this.id,
    required this.date,
    required this.episode,
    required this.title,
    required this.series,
    required this.image,
  });

  int id;
  String date;
  String episode;
  String title;
  int series;
  String image;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
    id: json["id"],
    date: json["date"],
    episode: json["episode"],
    title: json["title"],
    series: json["series"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": "date",
    "episode": episode,
    "title": title,
    "series": series,
    "image": image,
  };
}
