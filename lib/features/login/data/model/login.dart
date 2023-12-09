import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schat/features/login/domain/entities/login_entity.dart';

part 'login.freezed.dart';
part 'login.g.dart';
@freezed
class Login extends LoginEntity with _$Login {
  const factory Login({
    required final String account,
    required final String password,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}

