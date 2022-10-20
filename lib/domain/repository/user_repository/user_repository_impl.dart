import 'package:atomic/data/network/user/user_api.dart';
import 'package:atomic/domain/models/user/user.dart';
import 'package:atomic/domain/repository/user_repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserApi userApi;

  UserRepositoryImpl(this.userApi);

  @override
  Future<User> getUsers() async {
    final result = await userApi.getUsers();
    return User.fromJson(result.toJson());
  }
}
