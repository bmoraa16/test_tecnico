import 'package:flutter/material.dart';
import 'package:test_tecnico/models/pokemon_details.dart';
import 'package:test_tecnico/ui/home/widgets/bottom_loader.dart';
import 'package:test_tecnico/utils/constants/color_constants.dart';
import 'package:test_tecnico/utils/strings/capitalize.dart';
import 'package:test_tecnico/utils/strings/string_extension.dart';

class PokemonListItem extends StatelessWidget {
  const PokemonListItem(
    this.pokemonComplete,
    this.addPokemon,
    this.isAdded,
    this.isComplete, {
    super.key,
  });
  final PokemonDetails pokemonComplete;
  final VoidCallback? addPokemon;
  final bool isAdded;
  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: ColorConstants.lavenderGray,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                // ignore: unnecessary_null_comparison
                if (pokemonComplete.sprites!.frontDefault == null)
                  const BottomLoader()
                else
                  Expanded(
                    child: Image.network(
                      pokemonComplete.sprites!.frontDefault,
                      loadingBuilder: (context, widget, imageChunkEvent) {
                        return imageChunkEvent == null
                            ? widget
                            : const CircularProgressIndicator();
                      },
                    ),
                  ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre: ${(pokemonComplete.name ?? '-').capitalize()}',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: ColorConstants.backgroundDark,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tipo'.hardcoded,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: ColorConstants.backgroundDark,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: ColorConstants.blueViolet,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(3),
                              ), // Set rounded corner radius
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                (pokemonComplete.types![0].type!.name ?? '-')
                                    .capitalize(),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                      color: ColorConstants.lavenderWeb,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          if (pokemonComplete.types!.length == 1)
                            Container()
                          else
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: ColorConstants.burlywood,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(3),
                                ), // Set rounded corner radius
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  (pokemonComplete.types!.length == 2
                                          ? pokemonComplete
                                                  .types![1].type!.name ??
                                              '-'
                                          : '-')
                                      .capitalize(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                        color: ColorConstants.lavenderWeb,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            if (isComplete)
              Text(
                'Equipo completo',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: ColorConstants.redButton,
                      fontWeight: FontWeight.bold,
                    ),
              )
            else
              isAdded
                  ? Text(
                      'Ya es parte de tu equipo',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: ColorConstants.redButton,
                            fontWeight: FontWeight.bold,
                          ),
                    )
                  : SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: addPokemon!.call,
                        child: Text(
                          'Agregar a mi equipo'.hardcoded,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: ColorConstants.platinum,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
            /*if (isAdded)
              Text(
                'Ya es parte de tu equipo',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: ColorConstants.redButton,
                      fontWeight: FontWeight.bold,
                    ),
              )
            else
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: addPokemon!.call,
                  child: Text(
                    'Agregar a mi equipo'.hardcoded,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: ColorConstants.platinum,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
              */
          ],
        ),
      ),
    );
  }
}
