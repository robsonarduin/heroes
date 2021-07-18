// To parse this JSON data, do
//
//     final hero = heroFromJson(jsonString);

import 'dart:convert';

import 'package:heroes/model/appearance.dart';
import 'package:heroes/model/biography.dart';
import 'package:heroes/model/connections.dart';
import 'package:heroes/model/image.dart';
import 'package:heroes/model/powerstats.dart';
import 'package:heroes/model/work.dart';

MyHero heroFromJson(String str) => MyHero.fromJson(json.decode(str));

String heroToJson(MyHero data) => json.encode(data.toJson());

class MyHero {
  int? id;
  String? name;
  String? slug;
  Powerstats? powerstats;
  Appearance? appearance;
  Biography? biography;
  Work? work;
  Connections? connections;
  Images? images;

  MyHero({
    this.id,
    this.name,
    this.slug,
    this.powerstats,
    this.appearance,
    this.biography,
    this.work,
    this.connections,
    this.images,
  });

  factory MyHero.fromJson(Map<String, dynamic> json) => MyHero(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        powerstats: Powerstats.fromJson(json["powerstats"]),
        appearance: Appearance.fromJson(json["appearance"]),
        biography: Biography.fromJson(json["biography"]),
        work: Work.fromJson(json["work"]),
        connections: Connections.fromJson(json["connections"]),
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "powerstats": powerstats!.toJson(),
        "appearance": appearance!.toJson(),
        "biography": biography!.toJson(),
        "work": work!.toJson(),
        "connections": connections!.toJson(),
        "images": images!.toJson(),
      };
}
