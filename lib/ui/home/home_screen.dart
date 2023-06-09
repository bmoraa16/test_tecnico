import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tecnico/ui/home/bloc/home_bloc.dart';
import 'package:test_tecnico/ui/home/common/snack_bar_widget.dart';
import 'package:test_tecnico/ui/home/common/spinner_loading_dialog.dart';
import 'package:test_tecnico/utils/constants/color_constants.dart';
import 'package:test_tecnico/utils/strings/string_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc()..add(CreateInitialLoad()),
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is InitialLoadError) {
              SnackBarWidget.showError(context, state.error, 3);
            } else if (state is InitialLoadLoading) {
              SpinnerDialog.showLoadingSpinner(
                context,
                'Cargando'.hardcoded,
              );
            }
          },
          builder: (context, state) {
            return Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  '${state.enviroment}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: ColorConstants.lavenderGray,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
