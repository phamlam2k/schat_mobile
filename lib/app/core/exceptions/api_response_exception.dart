import 'package:dio/dio.dart';
import 'package:schat/app/core/exceptions/models/data.dart';
import 'package:schat/app/core/exceptions/models/data_model.dart';

class APIResponseException implements Exception {
  final String message;
  final int? code;
  final Response? response;
  Data? data;

  APIResponseException(
    this.message, {
    this.response,
    this.code,
  }) {
    if (response != null && response?.data != null && response?.data != '') {
      data = DataModel.fromJson(response!.data);
    }
  }
}
