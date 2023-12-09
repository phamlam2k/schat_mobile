import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schat/features/login/domain/entities/login_response_entity.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';



@freezed
class LoginResponseModelData extends LoginResponseEntity
    with _$LoginResponseModelData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginResponseModelData({
    required final String accessToken,
  }) = _LoginResponseModelData;

  factory LoginResponseModelData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelDataFromJson(json);
}
// @freezed
// class ResetPasswordResponseModelAttributes extends ResetPasswordResponseAttributes
//     with _$ResetPasswordResponseModelAttributes {
//   @JsonSerializable(fieldRename: FieldRename.snake)
//   const factory ResetPasswordResponseModelAttributes({
//     required final String phone,
//     required final String ref,
//   }) = _ResetPasswordResponseModelAttributes;

//   factory ResetPasswordResponseModelAttributes.fromJson(
//       Map<String, dynamic> json) =>
//       _$ResetPasswordResponseModelAttributesFromJson(json);
// }