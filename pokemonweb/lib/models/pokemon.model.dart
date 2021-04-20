import 'package:flutter/material.dart';

class PokemonModel {
  final String id;
  final String name;
  final String number;
  final double fleeRate;
  final int maxCP;
  final int maxHP;

  PokemonModel(
      {@required this.id,
      @required this.name,
      @required this.number,
      @required this.fleeRate,
      @required this.maxCP,
      @required this.maxHP});

  static PokemonModel fromJson(Map<String, dynamic> json) {
    PokemonModel pokemon = PokemonModel(
      id: json['id'],
      name: json['name'],
      number: json['number'],
      fleeRate: json['fleeRate'],
      maxCP: json['maxCP'],
      maxHP: json['maxHP'],
    );

    return pokemon;
  }

  String toString() {
    return """{
      id: $id,
      name: $name,
      number: $number,
      fleeRate: $fleeRate,
      maxCP: $maxCP,
      maxHP: $maxHP 
    }""";
  }
}
