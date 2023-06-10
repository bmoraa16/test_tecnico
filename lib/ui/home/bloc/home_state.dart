part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeLoadInitial extends HomeState {}

class HomeLoadLoading extends HomeState {
  const HomeLoadLoading();
}

class HomeLoadLoaded extends HomeState {
  const HomeLoadLoaded();
}

class HomeLoading extends HomeState {
  const HomeLoading({required this.message});
  final String message;
}

class HomeSuccessState extends HomeState {
  const HomeSuccessState({
    required this.pokemonComplete,
  });
  final List<PokemonDetails> pokemonComplete;
}

class LoadError extends HomeState {
  const LoadError({
    required this.error,
  });
  final String error;
}
