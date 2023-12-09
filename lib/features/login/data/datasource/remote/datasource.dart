
import 'package:schat/features/login/data/model/login_response.dart';

import 'package:schat/base/network/models/base_data.dart';
import 'package:schat/features/login/domain/entities/login_entity.dart';

abstract class DataSource {
  Future<BaseData<LoginResponseModelData>> login({
    required LoginEntity loginEntity,
  });
}
