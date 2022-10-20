import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'dog_response.freezed.dart';
part 'dog_response.g.dart';

/// {@template dog_response}
/// DogResponse description
/// {@endtemplate}
@freezed
class DogResponse with _$DogResponse {
  /// {@macro dog_response}
  const factory DogResponse({ 
    required String name,
    required int age,
  }) = _DogResponse;
  
    /// Creates a DogResponse from Json map
  factory DogResponse.fromJson(Map<String, dynamic> data) => _$DogResponseFromJson(data);
}
