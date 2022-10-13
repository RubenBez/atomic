import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateNotifier =
    ChangeNotifierProvider<AuthStateNotifier>((ref) => AuthStateNotifier(ref));

class AuthStateNotifier extends ChangeNotifier {
  bool _isAuthenticated = false;

  final Ref ref;

  AuthStateNotifier(this.ref) {
    _isAuthenticated = false;
    notifyListeners();
  }

  bool get isAuthenticated => _isAuthenticated;

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }

  void signInWithEmailPassword(String email, String password) {
    _isAuthenticated = true;
    notifyListeners();
  }
}
