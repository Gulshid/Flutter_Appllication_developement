// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
    String? message;
    Data? data;

    PostModel({
        this.message,
        this.data,
    });

    factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    String? email;
    String? password;

    Data({
        this.email,
        this.password,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
    };
}
