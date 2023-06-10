import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_tecnico/data/network/api/api_client.dart';

import 'package:test_tecnico/data/network/api/endpoints/pokemon_api.dart';
import 'package:test_tecnico/data/network/api/endpoints/pokemon_details_api.dart';
import 'package:test_tecnico/data/network/repositories/pokemon/pokemon_repository.dart';
import 'package:test_tecnico/data/network/repositories/pokemon_details/pokemon_details_repository.dart';
import 'package:test_tecnico/models/app_config.dart';

class ServiceLocator {
  const ServiceLocator._();

  static final getIt = GetIt.instance;

  static void setupServiceLocator(AppConfig appConfig) {
    getIt
      ..registerSingleton(appConfig)
      // Dio & API Client
      ..registerSingleton(Dio())
      ..registerSingleton(
        ApiClient(getIt<Dio>(), getIt<AppConfig>().apiUrl),
      )

      // API Endpoints methods
      ..registerSingleton(
        PokemonApi(apiClient: getIt<ApiClient>()),
      )
      ..registerSingleton(
        PokemonDetailsApi(apiClient: getIt<ApiClient>()),
      )

      // Remote repositories
      ..registerLazySingleton(
        () => PokemonRepository(getIt<PokemonApi>()),
      )
      ..registerLazySingleton(
        () => PokemonDetailsRepository(getIt<PokemonDetailsApi>()),
      );
  }
}
