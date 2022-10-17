import 'package:atomic/utils/config.dart';

import 'app_config_service.dart';

class AppConfigServiceImpl implements AppConfigService {
  @override
  String get apiUrl => _config.getString("apiUrl")!;

  late ConfigParser _config;
  static AppConfigServiceImpl instance = AppConfigServiceImpl._();

  AppConfigServiceImpl._();

  Future<void> initialize() async {
    const configFile = kProdMode
        ? "assets/config/config.json"
        : "assets/config/dev_config.json";

    _config = await ConfigParser.fromFile(configFile);
  }
}
