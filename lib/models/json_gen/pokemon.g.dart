// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
