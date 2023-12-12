import 'dart:ui';

import 'package:get/get.dart';
import 'package:schat/app/services/local_storage.dart';
import 'package:schat/app/types/token_manager.dart';
import 'package:schat/domain/models/user_context/user_context.dart';
import 'package:schat/domain/repositories/auth_repository.dart';


class AuthController extends GetxController {
  final LocalStorageService _store;
  final _tokenManager = TokenManager();

  // Get set user context
  final Rx<UserContext?> _rxUserContext = Rx<UserContext?>(null);
  UserContext? get userContext => _rxUserContext.value;

  // User info
 
  bool get isLoggedIn => userContext != null;


  final AuthenticationRepository _authenticationRepository;

  AuthController(
    this._authenticationRepository,
    this._store,
  );

  @override
  void onInit() {
    // _rxUserContext.value = _store.userContext;
    super.onInit();
  }

  @override
  void onReady() {
    ever(_store.isUserNull, (value) {
      if (value == true) {
      
      }
    });
    ever(
      _rxUserContext,
      (callback) => _store.userContext = callback,
    );
    super.onReady();
  }


}
