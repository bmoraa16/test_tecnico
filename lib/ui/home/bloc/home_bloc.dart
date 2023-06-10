import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tecnico/data/network/repositories/pokemon/pokemon_repository.dart';
import 'package:test_tecnico/data/network/repositories/pokemon_details/pokemon_details_repository.dart';
import 'package:test_tecnico/models/pokemon.dart';
import 'package:test_tecnico/models/pokemon_details.dart';
import 'package:test_tecnico/services/service_locator.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeLoadInitial()) {
    final pokemonRepository = ServiceLocator.getIt<PokemonRepository>();
    final pokemonDetailsRepository =
        ServiceLocator.getIt<PokemonDetailsRepository>();

    on<CreateInitialLoad>((event, emit) async {
      try {
        emit(
          const HomeLoadLoading(),
        );

        final data = await pokemonRepository.getPokemon(ofset: ofset);
        ofset = ofset + 10;
        final listPokemons = <PokemonDetails>[];
        for (var i = 0; i < ofset; i++) {
          final dataDetails =
              await pokemonDetailsRepository.getPokemonDetails(index: index);
          listPokemons.add(dataDetails);
          index++;
        }

        emit(
          HomeSuccessState(
            pokemonComplete: listPokemons,
          ),
        );
      } catch (e) {
        emit(
          LoadError(
            error: e.toString(),
          ),
        );
      }
    });
    on<CloseInitialLoad>((event, emit) {
      close();
    });
    on<PokemonFetchEvent>(
      (event, emit) async {
        emit(const HomeLoading(message: 'Cargando Pokemones'));

        final data = await pokemonRepository.getPokemon(ofset: ofset);
        lastOfset = ofset;
        ofset = ofset + 10;
        final listPokemons = <PokemonDetails>[];
        for (var i = lastOfset; i < ofset; i++) {
          final dataDetails =
              await pokemonDetailsRepository.getPokemonDetails(index: index);
          listPokemons.add(dataDetails);
          index++;
        }

        emit(
          HomeSuccessState(
            pokemonComplete: listPokemons,
          ),
        );
      },
    );
  }
  int ofset = 0;
  int index = 1;
  int lastOfset = 0;
  bool isFetching = false;
}
