// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'json_gen/pokemon.g.dart';

//cambiar el pokemonURL por los datos de los detalles de la lista

@JsonSerializable()
class Pokemon {
  int count;
  String next;
  String previous;
  List<Results> results;

  Pokemon({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}

@JsonSerializable()
class Results {
  String name;
  String url;

  Results({
    required this.name,
    required this.url,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
