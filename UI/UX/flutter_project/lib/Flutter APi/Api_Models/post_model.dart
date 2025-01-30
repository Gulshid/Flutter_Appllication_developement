// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
    String? email;
    String? password;
    String? id;
    DateTime? createdAt;

    PostModel({
        this.email,
        this.password,
        this.id,
        this.createdAt,
    });

    factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        email: json["email"],
        password: json["password"],
        id: json["id"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "id": id,
        "createdAt": createdAt?.toIso8601String(),
    };
}
