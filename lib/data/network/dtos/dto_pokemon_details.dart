// ignore_for_file: sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:test_tecnico/models/pokemon_details.dart';

part 'dto_pokemon_details.g.dart';

@JsonSerializable()
class DtoPokemonDetails {
  @JsonKey(name: 'abilities')
  final List<Abilities> abilities;

  @JsonKey(name: 'base_experience')
  final int baseExperience;

  @JsonKey(name: 'forms')
  final List<Forms> forms;

  @JsonKey(name: 'game_indices')
  final List<GameIndices> gameIndices;

  @JsonKey(name: 'height')
  final int height;

  @JsonKey(name: 'held_items')
  final List<HeldItems>? heldItems;

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'is_default')
  final bool isDefault;

  @JsonKey(name: 'location_area_encounters')
  final String locationAreaEncounters;

  @JsonKey(name: 'moves')
  final List<Moves> moves;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'order')
  final int order;

  @JsonKey(name: 'past_types')
  final List<PastTypes>? pastTypes;

  @JsonKey(name: 'species')
  final Ability species;

  @JsonKey(name: 'sprites')
  final Sprites? sprites;

  @JsonKey(name: 'stats')
  final List<Stats> stats;

  @JsonKey(name: 'types')
  final List<Types> types;

  @JsonKey(name: 'weight')
  final int weight;

  DtoPokemonDetails({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    this.pastTypes,
    required this.species,
    this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  factory DtoPokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$DtoPokemonDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DtoPokemonDetailsToJson(this);
}
