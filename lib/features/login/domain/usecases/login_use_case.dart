import 'package:dartz/dartz.dart';
import 'package:schat/base/network/errors/error.dart';
import 'package:schat/features/login/domain/entities/login_entity.dart';
import 'package:schat/features/login/domain/entities/login_response_entity.dart';

abstract class LoginUsecase {
  Future<Either<BaseError,LoginResponseEntity>> login({required LoginEntity loginEntity});
}