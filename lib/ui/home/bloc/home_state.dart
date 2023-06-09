part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState({
    this.enviroment,
  });
  final String? enviroment;

  @override
  List<Object?> get props => [enviroment];
}

class InitialLoadInitial extends HomeState {}

class InitialLoadLoading extends HomeState {
  const InitialLoadLoading({
    super.enviroment,
  });
}

class InitialLoadLoaded extends HomeState {
  const InitialLoadLoaded();
}

class InitialLoadError extends HomeState {
  const InitialLoadError({
    required this.error,
  });
  final String error;
}
