import 'package:atomic/domain/service/app_config/app_config_service_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

final dioProvider = Provider.autoDispose<Dio>((ref) {
  final config = ref.read(appConfigServiceProvider);
  final dio = Dio(BaseOptions(
    baseUrl: config.apiUrl,
  ));
  return dio;
});
