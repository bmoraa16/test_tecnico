import 'package:dio/dio.dart';
import 'package:test_tecnico/data/network/api/api_error.dart';
import 'package:test_tecnico/data/network/api/endpoints/pokemon_api.dart';
import 'package:test_tecnico/data/network/dtos/dto_pokemon.dart';
import 'package:test_tecnico/models/pokemon.dart';

class PokemonRepository {
  PokemonRepository(this.pokemonApi);

  final PokemonApi pokemonApi;

  Future<Pokemon> getPokemon() async {
    try {
      final response = await pokemonApi.getPokemon();
      final data = response.data as Map<String, dynamic>;
      final pokemonData = DtoPokemon.fromJson(data);
      // Wrapper in a new model to avoid tight coupling
      //aqui obtendremos los datos, entonces cambiar el dto
      final pokemon = Pokemon(
        count: pokemonData.count,
        next: pokemonData.next,
        previous: pokemonData.previous,
        results: pokemonData.results,
      );
      return pokemon;
    } on DioException catch (e) {
      final message = ApiError.fromDioError(e).toString();
      throw message;
    }
  }
}
