import 'package:atomic/domain/service/app_config/app_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appConfigServiceProvider =
    Provider<AppConfigService>((ref) => AppConfigServiceImpl.instance);
