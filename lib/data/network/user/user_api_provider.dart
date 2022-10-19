import 'package:atomic/data/network/api.dart';
import 'package:atomic/data/network/user/user_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userApiProvider = Provider.autoDispose<UserApi>((ref) {
  return UserApi(ref.read(dioProvider));
});
