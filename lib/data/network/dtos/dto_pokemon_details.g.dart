// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoPokemonDetails _$DtoPokemonDetailsFromJson(Map<String, dynamic> json) =>
    DtoPokemonDetails(
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: json['base_experience'] as int,
      forms: (json['forms'] as List<dynamic>)
          .map((e) => Forms.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['game_indices'] as List<dynamic>)
          .map((e) => GameIndices.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int,
      heldItems: (json['held_items'] as List<dynamic>?)
          ?.map((e) => HeldItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      isDefault: json['is_default'] as bool,
      locationAreaEncounters: json['location_area_encounters'] as String,
      moves: (json['moves'] as List<dynamic>)
          .map((e) => Moves.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      order: json['order'] as int,
      pastTypes: (json['past_types'] as List<dynamic>?)
          ?.map((e) => PastTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: Ability.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$DtoPokemonDetailsToJson(DtoPokemonDetails instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.baseExperience,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'height': instance.height,
      'held_items': instance.heldItems,
      'id': instance.id,
      'is_default': instance.isDefault,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'past_types': instance.pastTypes,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };
