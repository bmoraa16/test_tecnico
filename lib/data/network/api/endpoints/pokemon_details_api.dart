import 'package:dio/dio.dart';
import 'package:test_tecnico/data/network/api/api_client.dart';

class PublicConfigApi {
  PublicConfigApi({required this.apiClient});

  final ApiClient apiClient;

  Future<Response> getPublicConfig() async {
    try {
      final response = await apiClient.get('/pokemon/34/');
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
