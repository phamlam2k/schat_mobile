import 'package:flutter_dotenv/flutter_dotenv.dart';

class BaseUrls {
  static String turboOnline = dotenv.env['BASE_URL'] ?? '';
  static String get turboOnlineImageKit => dotenv.env['BASE_KIT_IMAGE_URL'] ?? '';
  static String get imagePieces => dotenv.env['BASE_PIECES_IMAGE_URL'] ?? '';
  static String get custpsplogo => dotenv.env['BASE_CSTP_IMAGE_URL'] ?? '';
  static String get turboOnlineImage => dotenv.env['BASE_IMAGE'] ?? '';
}

class APIEndpoint {
  static String get createOrderMeta => '/orderMeta/createOrderMeta';
  static String get saveOrder => '/order/saveOrder';
}
