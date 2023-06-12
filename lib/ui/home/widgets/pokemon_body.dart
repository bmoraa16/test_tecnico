import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tecnico/models/pokemon_details.dart';
import 'package:test_tecnico/models/pokemon_list.dart';
import 'package:test_tecnico/ui/common/basic_dialog_widget.dart';
import 'package:test_tecnico/ui/common/snack_bar_widget.dart';
import 'package:test_tecnico/ui/common/spinner_loading_dialog.dart';
import 'package:test_tecnico/ui/home/bloc/home_bloc.dart';
import 'package:test_tecnico/ui/home/widgets/bottom_loader.dart';
import 'package:test_tecnico/ui/home/widgets/pokemon_item_added.dart';
import 'package:test_tecnico/ui/home/widgets/pokemon_list_item.dart';
import 'package:test_tecnico/utils/assets/asset_routes.dart';
import 'package:test_tecnico/utils/constants/color_constants.dart';
import 'package:test_tecnico/utils/strings/string_extension.dart';

class PokemonBody extends StatefulWidget {
  const PokemonBody({super.key});

  @override
  State<PokemonBody> createState() => _PokemonBodyState();
}

class _PokemonBodyState extends State<PokemonBody> {
  final List<PokemonDetails> _pokemonsDetails = [];
  List<PokemonList> _pokemonsList = [];
  final ScrollController _scrollController = ScrollController();
  bool selectedPokemon = false;
  bool teamComplete = false;
  List<int> itemsSelected = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeLoadInitial ||
              state is HomeLoadLoading && _pokemonsDetails.isEmpty) {
            SpinnerDialog.showLoadingSpinner(
              context,
              'Cargando'.hardcoded,
            );
          } else if (state is HomeLoadLoaded) {
            if (SpinnerDialog.isOpen(context)) {
              SpinnerDialog.hideSpinner(context);
            }
          } else if (state is HomeLoading) {
          } else if (state is HomeSuccessState &&
              state.pokemonComplete.isEmpty) {
            SnackBarWidget.showGeneral(
              context,
              'No hay más Pokemones',
              2,
              false,
            );
          } else if (state is LoadError) {
            SnackBarWidget.showError(context, state.error, 3);
            BlocProvider.of<HomeBloc>(context).isFetching = false;
          } else if (state is PokemonAddedState) {
            _pokemonsList = state.pokemonAdded;
          }
          return;
        },
        builder: (context, state) {
          if (state is HomeLoadInitial ||
              state is HomeLoadLoading && _pokemonsDetails.isEmpty) {
            return initialScreen();
          } else if (state is HomeSuccessState) {
            _pokemonsDetails.addAll(state.pokemonComplete);
            BlocProvider.of<HomeBloc>(context).isFetching = false;
            if (SpinnerDialog.isOpen(context)) {
              SpinnerDialog.hideSpinner(context);
            }
          } else if (state is LoadError && _pokemonsDetails.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    BlocProvider.of<HomeBloc>(context)
                      ..isFetching = true
                      ..add(const PokemonFetchEvent());
                  },
                  icon: const Icon(Icons.refresh),
                ),
                const SizedBox(height: 15),
                Text(state.error, textAlign: TextAlign.center),
              ],
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Intercambio Pokémon'.hardcoded,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: ColorConstants.backgroundDark,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30),
                child: ColoredBox(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 18, bottom: 5, top: 5),
                        child: Image.asset(
                          desktopIcon,
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          '''
Selecciona hasta 5 Pokémons para agregarlos a tu equipo''',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: ColorConstants.backgroundDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return BasicDialogWidget(
                          pokemon: Expanded(
                            child: AnimatedList(
                              key: _listKey,
                              initialItemCount: _pokemonsList.length,
                              itemBuilder: (context, index, animation) {
                                return buildItem(context, animation, index);
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(pokeballIcon),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          _pokemonsList.length.toString(),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: ColorConstants.backgroundDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListView.separated(
                controller: _scrollController
                  ..addListener(() {
                    if (_scrollController.position.pixels ==
                            _scrollController.position.maxScrollExtent &&
                        !BlocProvider.of<HomeBloc>(context).isFetching) {
                      BlocProvider.of<HomeBloc>(context)
                        ..isFetching = true
                        ..add(const PokemonFetchEvent());
                    }
                  }),
                itemBuilder: (context, index) {
                  return index == _pokemonsDetails.length
                      ? const BottomLoader()
                      : PokemonListItem(
                          _pokemonsDetails[index],
                          () {
                            final pokemon = PokemonList(
                              index: index,
                              pokemon: _pokemonsDetails[index],
                              selected: true,
                            );
                            _pokemonsList.add(pokemon);
                            selectedPokemon = pokemon.selected;
                            itemsSelected.add(index);
                            _pokemonsDetails[index].added = pokemon.selected;
                            BlocProvider.of<HomeBloc>(context).add(
                              PokemonAdded(pokemonList: _pokemonsList),
                            );
                            if (_pokemonsList.length == 5) {
                              teamComplete = true;
                            }
                            setState(() {});
                          },
                          _pokemonsDetails[index].added,
                          teamComplete,
                        );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: _pokemonsDetails.length + 1,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget initialScreen() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          'Brian Octavio\nMora Anaya',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: ColorConstants.lavenderGray,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }

  Widget buildItem(
    BuildContext context,
    Animation<double> animation,
    int index,
  ) {
    return SizeTransition(
      sizeFactor: animation,
      child: PokemonItemAdded(
        pokemonComplete: _pokemonsList[index].pokemon,
        removePokemon: () {
          for (var i = 0; i < _pokemonsDetails.length; i++) {
            for (var j = 0; j < _pokemonsList.length; j++) {
              if (_pokemonsDetails[i]
                  .name!
                  .contains(_pokemonsList[index].pokemon.name!)) {
                removeItem(index);
                _pokemonsDetails[i].added = false;
                if (_pokemonsList.length < 5) {
                  teamComplete = false;
                }
                setState(() {});
                return;
              }
            }
          }
        },
      ),
    );
  }

  void removeItem(int index) {
    if (_pokemonsList.isEmpty || index < 0 || index >= _pokemonsList.length) {
      return;
    }

    if (index == _pokemonsList.length - 1) {
      _pokemonsList.removeAt(index);
      _listKey.currentState!.removeItem(
        index,
        (context, animation) => Container(),
        duration: const Duration(milliseconds: 500),
      );
    } else {
      _pokemonsList.removeAt(index);
      _listKey.currentState!.removeItem(
        index,
        (context, animation) => buildItem(context, animation, index),
        duration: const Duration(milliseconds: 500),
      );
    }
  }
}
