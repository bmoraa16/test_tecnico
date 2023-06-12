import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tecnico/ui/home/bloc/home_bloc.dart';
import 'package:test_tecnico/ui/home/widgets/pokemon_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => HomeBloc()..add(CreateInitialLoad()),
          child: const Scaffold(
            body: PokemonBody(),
          ),
        ),
      ),
    );
  }
}
