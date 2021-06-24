// To parse this JSON data, do
//
//     final postModelDart = postModelDartFromJson(jsonString);

import 'dart:convert';

List<PostModelDart> postModelDartFromJson(String str) => List<PostModelDart>.from(json.decode(str).map((x) => PostModelDart.fromJson(x)));

String postModelDartToJson(List<PostModelDart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModelDart {
  PostModelDart({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory PostModelDart.fromJson(Map<String, dynamic> json) => PostModelDart(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
