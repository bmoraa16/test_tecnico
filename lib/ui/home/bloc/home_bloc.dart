import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tecnico/data/network/repositories/public_config/pokemon_repository.dart';
import 'package:test_tecnico/models/app_config.dart';
import 'package:test_tecnico/services/service_locator.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : _appConfig = ServiceLocator.getIt<AppConfig>(),
        super(InitialLoadInitial()) {
    final pokemonRepository = ServiceLocator.getIt<PokemonRepository>();

    on<CreateInitialLoad>((event, emit) async {
      try {
        emit(
          InitialLoadLoading(
            enviroment: _appConfig.enviroment,
          ),
        );

        await Future.delayed(const Duration(seconds: 3));
        await pokemonRepository.getPokemon();

        emit(
          const InitialLoadLoaded(),
        );
      } catch (e) {
        emit(
          InitialLoadError(
            error: e.toString(),
          ),
        );
      }
    });
    on<CloseInitialLoad>((event, emit) {
      close();
    });
  }

  final AppConfig _appConfig;
}
