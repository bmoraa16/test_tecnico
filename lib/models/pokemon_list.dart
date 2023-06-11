// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:test_tecnico/models/pokemon_details.dart';

part 'pokemon_list.g.dart';

//cambiar el pokemonURL por los datos de los detalles de la lista

@JsonSerializable()
class PokemonList {
  int index;
  PokemonDetails pokemon;

  PokemonList({
    required this.index,
    required this.pokemon,
  });

  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonListToJson(this);
}
