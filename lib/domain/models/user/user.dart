part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User() = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}