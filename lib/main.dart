import 'package:flutter/material.dart';
import 'package:test_tecnico/models/app_config.dart';
import 'package:test_tecnico/services/service_locator.dart';
import 'package:test_tecnico/ui/home/home_screen.dart';
import 'package:test_tecnico/ui/theme/theme.dart';

void main() async {
  const appConfig = AppConfig(
    appName: 'Test_tecnico_DEV',
    apiUrl: 'https://pokeapi.co/api/v2',
  );
  ServiceLocator.setupServiceLocator(appConfig);
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.getIt<AppConfig>();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: losDeLaHeroicaThemeData.values.first,
      home: const HomeScreen(),
    );
  }
}
