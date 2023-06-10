// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:test_tecnico/models/pokemon.dart';

part 'dto_pokemon.g.dart';

@JsonSerializable()
class DtoPokemon {
  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'next')
  final String next;

  @JsonKey(name: 'previous')
  final String? previous;

  @JsonKey(name: 'results')
  final List<Results> results;

  DtoPokemon({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
  });

  factory DtoPokemon.fromJson(Map<String, dynamic> json) =>
      _$DtoPokemonFromJson(json);

  Map<String, dynamic> toJson() => _$DtoPokemonToJson(this);
}
