import 'package:get/get.dart';
import 'package:schat/app/services/local_storage.dart';
import 'package:schat/app/util/token_manager.dart';
import 'package:schat/domain/models/user_context/user_context.dart';
import 'package:schat/presentation/routes/app_pages.dart';

class AppController extends GetxController {
  // Get set user context
  final LocalStorageService _store;
  final _tokenManager = TokenManager();
  final Rx<UserContext?> _rxUserContext = Rx<UserContext?>(null);

  UserContext? get userContext => _rxUserContext.value;

  AppController(
    this._store,
  );

  @override
  void onInit() {
    _rxUserContext.value = _store.userContext;
    super.onInit();
  }

  @override
  void onReady() {
    ever(_store.isUserNull, (value) {
      if (value == true) {
        logout();
      }
    });
    ever(
      _rxUserContext,
      (callback) => _store.userContext = callback,
    );
    super.onReady();
  }

  bool get isLoggedIn => userContext != null;

  login(UserContext response) async {
    _rxUserContext.value = response;
    _tokenManager.setAccessToken(response.accessToken);
  }

  logout() {
    _store.removeAllSharedPreferencesValues();
    _tokenManager.deleteAll();
    Get.offAllNamed(Routes.login);
  }
}
