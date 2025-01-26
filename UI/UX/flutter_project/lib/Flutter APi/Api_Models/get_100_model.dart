// To parse this JSON data, do
//
//     final postApi = postApiFromJson(jsonString);

import 'dart:convert';

List<PostApi> postApiFromJson(String str) => List<PostApi>.from(json.decode(str).map((x) => PostApi.fromJson(x)));

String postApiToJson(List<PostApi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostApi {
    int? userId;
    int? id;
    String? title;
    String? body;

    PostApi({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    factory PostApi.fromJson(Map<String, dynamic> json) => PostApi(
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
