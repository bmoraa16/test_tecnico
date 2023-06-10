import 'package:dio/dio.dart';
import 'package:test_tecnico/data/network/api/api_client.dart';

class PokemonApi {
  PokemonApi({required this.apiClient});

  final ApiClient apiClient;

  Future<Response> getPokemon(int ofset) async {
    try {
      final response = await apiClient.get('/pokemon?limit=10&offset=$ofset');
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
