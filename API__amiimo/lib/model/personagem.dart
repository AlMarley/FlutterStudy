import 'package:flutter/foundation.dart';
import 'dart:convert';

class Personagem {
  final String name;
  final String type;
  final String image;

  const Personagem({
    required this.name,
    required this.type,
    required this.image,
  });

  factory Personagem.fromJson(Map<String, dynamic> json) {
    return Personagem(
      name: json['name'],
      type: json['type'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['image'] = this.image;

    return data;
  }
}
