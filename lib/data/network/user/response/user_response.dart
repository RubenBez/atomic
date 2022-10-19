import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required String name,
    required String surname,
    required String email,
    required String age,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, Object?> json) =>
      _$UserResponseFromJson(json);
}
