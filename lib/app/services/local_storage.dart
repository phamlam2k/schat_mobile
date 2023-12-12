import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _Key { user }

class LocalStorageService extends GetxService {
  SharedPreferences? _sharedPreferences;

  Rx<bool> isUserNull = Rx(true);

  set userContext(userContext) {}

  Future<LocalStorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  void removeAllSharedPreferencesValues() {
    for (var element in _Key.values) {
      _sharedPreferences?.remove(element.toString());
    }
  }
}
