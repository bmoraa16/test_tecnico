import 'package:flutter/material.dart';
import 'package:test_tecnico/models/pokemon_details.dart';
import 'package:test_tecnico/ui/home/widgets/bottom_loader.dart';
import 'package:test_tecnico/utils/constants/color_constants.dart';
import 'package:test_tecnico/utils/strings/capitalize.dart';
import 'package:test_tecnico/utils/strings/string_extension.dart';

class PokemonItemAdded extends StatelessWidget {
  const PokemonItemAdded({
    required this.pokemonComplete,
    this.removePokemon,
    super.key,
  });
  final PokemonDetails pokemonComplete;
  final VoidCallback? removePokemon;

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
                        (pokemonComplete.name ?? '-').capitalize(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: ColorConstants.backgroundDark,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: removePokemon!.call,
                child: Text(
                  'Eliminar de mi equipo'.hardcoded,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: ColorConstants.platinum,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
