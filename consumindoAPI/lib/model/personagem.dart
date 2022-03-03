import 'package:flutter/foundation.dart';
import 'dart:convert';

class Personagem {
  final String name;
  final String email;
  final String picture;

  const Personagem({
    required this.name,
    required this.email,
    required this.picture,
  });

  factory Personagem.fromJson(Map<String, dynamic> json) {
    return Personagem(
      name: json['name']['first'],
      email: json['email'],
      picture: json['picture']['large'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name']['first'] = this.name;
    data['email'] = this.email;
    data['picture']['large'] = this.picture;

    return data;
  }
}


















// class Personagem {
//   final int? char_id;
//   final String? name;
//   final String? img;
//   final String? nickname;

//   Personagem({
//     required this.char_id,
//     required this.name,
//     required this.img,
//     required this.nickname,
//   });
// }

//   factory Personagem.fromJson(Map<String, dynamic> json){
//     return Personagem(
//       char_id: json['char'],
//       name: json['name'],
//       img: json['img'],
//       nickname: json['nickname'],);
//   }