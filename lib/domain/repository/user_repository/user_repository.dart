
import 'dart:async';

import 'package:atomic/domain/models/user/user.dart';

abstract class UserRepository {
  Future<User> getUsers();
}