import 'package:flutter_dotenv/flutter_dotenv.dart';

class BaseUrls {
  static String baseUrl = dotenv.get('BASE_URL');
}

class APIEndpoint {
  static String get login => '/auth/login';
  static String get register => '/auth/register';
  static String get verifyOtp => '/auth/active';
  static String get sendOtpForgot => '/auth/sentOtpForGot';
  static String get logout => '/auth/logout';
  static String get getConversationList => '/conversation';
}
