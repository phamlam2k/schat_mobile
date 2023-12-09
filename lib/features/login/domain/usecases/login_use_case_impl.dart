import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:schat/base/network/errors/error.dart';
import 'package:schat/features/login/domain/entities/login_entity.dart';
import 'package:schat/features/login/domain/entities/login_response_entity.dart';
import 'package:schat/features/login/domain/repositories/login_repository.dart';
import 'package:schat/features/login/domain/usecases/login_use_case.dart';

@Injectable(as: LoginUsecase)
class LoginUseCaseImpl implements LoginUsecase {
  LoginUseCaseImpl(this._coreRepo);

  final LoginRepository _coreRepo;

  @override
  Future<Either<BaseError, LoginResponseEntity>> login({required LoginEntity loginEntity}) => _coreRepo.login(loginEntity);
}
