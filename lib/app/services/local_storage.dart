import 'dart:convert';

import 'package:get/get.dart';
import 'package:schat/domain/models/user_context/user_context.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _Key { user }

class LocalStorageService extends GetxService {
  SharedPreferences? _sharedPreferences;

  Rx<bool> isUserNull = Rx(true);

  Future<LocalStorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

   UserContext? get userContext {
    final rawJson = _sharedPreferences?.getString(_Key.user.toString());
    if (rawJson == null) {
      return null;
    }
    Map<String, dynamic> map = jsonDecode(rawJson);
    return UserContext.fromJson(map);
  }

  set userContext(UserContext? value) {
    if (value != null) {
      isUserNull.value = false;
      _sharedPreferences?.setString(_Key.user.toString(), json.encode(value.toJson()));
    } else {
      isUserNull.value = true;
      _sharedPreferences?.remove(_Key.user.toString());
    }
  }

  void removeAllSharedPreferencesValues() {
    for (var element in _Key.values) {
      _sharedPreferences?.remove(element.toString());
    }
  }
}
