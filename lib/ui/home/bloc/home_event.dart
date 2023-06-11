part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class CreateInitialLoad extends HomeEvent {}

class CloseInitialLoad extends HomeEvent {}

class PokemonFetchEvent extends HomeEvent {
  const PokemonFetchEvent();
}

class PokemonAdded extends HomeEvent {
  const PokemonAdded({
    required this.pokemonList,
  });
  final List<PokemonList> pokemonList;
}
