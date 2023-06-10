import 'package:dio/dio.dart';
import 'package:test_tecnico/data/network/api/api_client.dart';

class PokemonDetailsApi {
  PokemonDetailsApi({required this.apiClient});

  final ApiClient apiClient;

  Future<Response> getPokemonDetails(int index) async {
    try {
      final response = await apiClient.get('/pokemon/$index');
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
