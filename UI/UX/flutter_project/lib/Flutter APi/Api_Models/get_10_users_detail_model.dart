// To parse this JSON data, do
//
//     final get10Users = get10UsersFromJson(jsonString);

import 'dart:convert';

List<Get10Users> get10UsersFromJson(String str) => List<Get10Users>.from(json.decode(str).map((x) => Get10Users.fromJson(x)));

String get10UsersToJson(List<Get10Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Get10Users {
    int? id;
    String? name;
    String? username;
    String? email;
    Address? address;
    String? phone;
    String? website;
    Company? company;

    Get10Users({
        this.id,
        this.name,
        this.username,
        this.email,
        this.address,
        this.phone,
        this.website,
        this.company,
    });

    factory Get10Users.fromJson(Map<String, dynamic> json) => Get10Users(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: json["company"] == null ? null : Company.fromJson(json["company"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address?.toJson(),
        "phone": phone,
        "website": website,
        "company": company?.toJson(),
    };
}

class Address {
    String? street;
    String? suite;
    String? city;
    String? zipcode;
    Geo? geo;

    Address({
        this.street,
        this.suite,
        this.city,
        this.zipcode,
        this.geo,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo?.toJson(),
    };
}

class Geo {
    String? lat;
    String? lng;

    Geo({
        this.lat,
        this.lng,
    });

    factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}

class Company {
    String? name;
    String? catchPhrase;
    String? bs;

    Company({
        this.name,
        this.catchPhrase,
        this.bs,
    });

    factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
    };
}
