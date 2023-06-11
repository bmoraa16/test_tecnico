import 'package:flutter/material.dart';
import 'package:test_tecnico/utils/constants/color_constants.dart';
import 'package:test_tecnico/utils/strings/string_extension.dart';

class BasicDialogWidget extends StatelessWidget {
  const BasicDialogWidget({
    required this.pokemon,
    super.key,
  });
  final Widget pokemon;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            pokemon,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Cerrar'.hardcoded,
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
