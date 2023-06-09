import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test_tecnico/utils/assets/asset_routes.dart';
import 'package:test_tecnico/utils/constants/color_constants.dart';

class SpinnerDialog {
  const SpinnerDialog({required this.title});
  final String title;

  static Future<Object?> showLoadingSpinner(
    BuildContext context,
    String title,
  ) {
    return showGeneralDialog(
      barrierColor: ColorConstants.haiti.withOpacity(.8),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: WillPopScope(
            onWillPop: () async => false,
            child: Opacity(
              opacity: a1.value,
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        LottieBuilder.asset(
                          loaderAnimation,
                          height: MediaQuery.of(context).size.height * .2,
                        ),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: false,
      barrierLabel: '',
      context: context,
      pageBuilder: (context, animation1, animation2) {
        return Container();
      },
    );
  }

  static void hideSpinner(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  static bool isOpen(BuildContext context) {
    return Navigator.of(context, rootNavigator: true).canPop();
  }
}
