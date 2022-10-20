import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'user_response.freezed.dart';
part 'user_response.g.dart';

/// {@template user_response}
/// UserResponse description
/// {@endtemplate}
@freezed
class UserResponse with _$UserResponse {
  /// {@macro user_response}
  const factory UserResponse({ 
    required String name,
    required String surname,
    required String email,
    required int age,
  }) = _UserResponse;
  
    /// Creates a UserResponse from Json map
  factory UserResponse.fromJson(Map<String, dynamic> data) => _$UserResponseFromJson(data);
}
