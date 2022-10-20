import 'package:atomic/data/network/user/user.dart';
import 'package:atomic/domain/repository/user_repository/user_repository.dart';
import 'package:atomic/domain/repository/user_repository/user_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>(
    (ref) => UserRepositoryImpl(ref.read(userApiProvider)));
