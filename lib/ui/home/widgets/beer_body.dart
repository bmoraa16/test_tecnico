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

class BeerBody extends StatefulWidget {
  const BeerBody({super.key});

  @override
  State<BeerBody> createState() => _BeerBodyState();
}

class _BeerBodyState extends State<BeerBody> {
  final List<PokemonDetails> _pokemonsDetails = [];
  List<PokemonList> _pokemonsList = [];
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollControllerLisItemsSelected = ScrollController();
  List<int> selectedItem = [];
  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

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
                            child: ListView.separated(
                              shrinkWrap: true,
                              controller: _scrollControllerLisItemsSelected,
                              itemBuilder: (context, index) {
                                return PokemonItemAdded(
                                  pokemonComplete: _pokemonsList[index].pokemon,
                                  removePokemon: () {},
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 20),
                              itemCount: _pokemonsList.length,
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
                          _pokemonsDetails.length.toString(),
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
                            );
                            _pokemonsList.add(pokemon);

                            selectedItem.add(index);

                            BlocProvider.of<HomeBloc>(context).add(
                              PokemonAdded(pokemonList: _pokemonsList),
                            );
                          },
                          false,
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
}
