import 'package:dio/dio.dart';
import 'package:test_tecnico/data/network/api/api_error.dart';
import 'package:test_tecnico/data/network/api/endpoints/pokemon_details_api.dart';
import 'package:test_tecnico/data/network/dtos/dto_pokemon_details.dart';
import 'package:test_tecnico/models/pokemon_details.dart';

class PokemonDetailsRepository {
  PokemonDetailsRepository(this.pokemonApi);

  final PokemonDetailsApi pokemonApi;

  Future<PokemonDetails> getPokemonDetails({
    required int index,
  }) async {
    try {
      final response = await pokemonApi.getPokemonDetails(index);
      final data = response.data as Map<String, dynamic>;
      final pokemonData = DtoPokemonDetails.fromJson(data);
      // Wrapper in a new model to avoid tight coupling
      final pokemon = PokemonDetails(
        sprites: pokemonData.sprites,
        types: pokemonData.types,
        name: pokemonData.name,
        added: false,
      );
      return pokemon;
    } on DioException catch (e) {
      final message = ApiError.fromDioError(e).toString();
      throw message;
    }
  }
}
