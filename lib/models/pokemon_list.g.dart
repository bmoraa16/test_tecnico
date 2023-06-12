// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonList _$PokemonListFromJson(Map<String, dynamic> json) => PokemonList(
      index: json['index'] as int,
      pokemon: PokemonDetails.fromJson(json['pokemon'] as Map<String, dynamic>),
      selected: json['selected'] as bool,
    );

Map<String, dynamic> _$PokemonListToJson(PokemonList instance) =>
    <String, dynamic>{
      'index': instance.index,
      'pokemon': instance.pokemon,
      'selected': instance.selected,
    };
