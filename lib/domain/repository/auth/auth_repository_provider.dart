import 'package:atomic/domain/providers/auth_state_notifier.dart';
import 'package:atomic/domain/repository/auth/auth_repository.dart';
import 'package:atomic/domain/repository/auth/auth_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider.autoDispose<AuthRepository>(
    (ref) => AuthRepositoryImpl(ref.read(authStateNotifier)));
