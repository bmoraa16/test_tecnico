import 'package:dio/dio.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_tecnico/data/network/api/api_client.dart';
import 'package:test_tecnico/data/network/api/endpoints/pokemon_api.dart';
import 'package:test_tecnico/data/network/dtos/dto_pokemon.dart';
import 'package:test_tecnico/models/app_config.dart';
import 'package:test_tecnico/services/service_locator.dart';

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response {}

void main() {
  group('Exchange Rates Api', () {
    late Dio httpClient;
    late PokemonApi apiClient;
    const appConfig = AppConfig(
      appName: 'Test_tecnico_DEV',
      apiUrl: 'https://pokeapi.co/api/v2',
    );
    ServiceLocator.setupServiceLocator(appConfig);

    setUp(() async {
      httpClient = MockDio();
      apiClient = PokemonApi(
        apiClient: ApiClient(Dio(), appConfig.apiUrl),
      );
    });

    test('Pokemons List, 200 Successful response', () async {
      final response = MockResponse();

      when(() => response.statusCode).thenReturn(200);
      when(() => response.data).thenReturn(
        '''
{
    "count": 1281,
    "next": "https://pokeapi.co/api/v2/pokemon?offset=30&limit=10",
    "previous": "https://pokeapi.co/api/v2/pokemon?offset=10&limit=10",
    "results": [
        {
            "name": "spearow",
            "url": "https://pokeapi.co/api/v2/pokemon/21/"
        },
        {
            "name": "fearow",
            "url": "https://pokeapi.co/api/v2/pokemon/22/"
        },
        {
            "name": "ekans",
            "url": "https://pokeapi.co/api/v2/pokemon/23/"
        },
        {
            "name": "arbok",
            "url": "https://pokeapi.co/api/v2/pokemon/24/"
        },
        {
            "name": "pikachu",
            "url": "https://pokeapi.co/api/v2/pokemon/25/"
        },
        {
            "name": "raichu",
            "url": "https://pokeapi.co/api/v2/pokemon/26/"
        },
        {
            "name": "sandshrew",
            "url": "https://pokeapi.co/api/v2/pokemon/27/"
        },
        {
            "name": "sandslash",
            "url": "https://pokeapi.co/api/v2/pokemon/28/"
        },
        {
            "name": "nidoran-f",
            "url": "https://pokeapi.co/api/v2/pokemon/29/"
        },
        {
            "name": "nidorina",
            "url": "https://pokeapi.co/api/v2/pokemon/30/"
        }
    ]
}
''',
      );
      when(() => httpClient.get(any())).thenAnswer((_) async => response);
      final actual = await apiClient.getPokemon(20);

      final results = actual.data as Map<String, dynamic>;
      final pokemonData = DtoPokemon.fromJson(results);

      expect(results, isMap);

      expect(pokemonData, isA<DtoPokemon>());

      expect(
        pokemonData,
        isA<DtoPokemon>()
            .having((p) => p.count, 'count isNotNull', isNonNegative)
            .having((p0) => p0.next, 'next isNotNull', isNotNull)
            .having((p1) => p1.previous, 'previous isNotNull', isNotNull)
            .having((p2) => p2.results, 'results isNotNull', isNotEmpty),
      );
    });
  });
}
