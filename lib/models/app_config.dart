class AppConfig {
  const AppConfig({
    required this.appName,
    required this.apiUrl,
    required this.enviroment,
  });

  final String appName;
  final String apiUrl;
  final String enviroment;
}
