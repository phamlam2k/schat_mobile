import 'package:injectable/injectable.dart';
import 'package:schat/base/network/models/base_data.dart';
import 'package:schat/features/login/data/datasource/remote/datasource.dart';
import 'package:schat/features/login/data/datasource/remote/service/login_service.dart';
import 'package:schat/features/login/data/model/login_response.dart';
import 'package:schat/features/login/domain/entities/login_entity.dart';


@Injectable(as: DataSource)
class DataSourceImpl implements DataSource {
  final LoginService _loginService;

  DataSourceImpl(this._loginService);

  @override
  Future<BaseData<LoginResponseModelData>> login({
    required LoginEntity loginEntity,
  }) {
    return _loginService.login(
      body: {
        "account": loginEntity.account,
        "password": loginEntity.password,
      },
    );
  }
}

