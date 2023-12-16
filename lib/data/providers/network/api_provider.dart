import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:schat/app/core/exceptions/api_response_exception.dart';
import 'package:schat/app/services/local_storage.dart';
import 'package:schat/app/types/token_manager.dart';
import 'package:schat/data/providers/network/api_endpoint.dart';
import 'package:schat/data/providers/network/api_request_representable.dart';
import 'package:schat/domain/models/user_context/user_context.dart';


class APIProvider {
  late Dio _dio;
  static final APIProvider _instance = APIProvider._internal();

  factory APIProvider() {
    return _instance;
  }

  APIProvider._internal() {
    _dio = Dio();
    _dio.options.receiveTimeout = const Duration(seconds: 60);
    _dio.options.headers[HttpHeaders.contentTypeHeader] = 'application/json';
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
        // Retrieve the access token from storage
        String? accessToken = await TokenManager().getToken();
        if (accessToken != null && accessToken.isNotEmpty) {
          // Add the access token to the headers
          options.headers[HttpHeaders.authorizationHeader] = 'Bearer $accessToken';
        }
        return handler.next(options);
      },
      onError: (e, handler) async {
        if (e.response?.statusCode == 401) {
          // Token expired
          var refreshToken = await TokenManager().getRefreshToken();
          if (refreshToken != null) {
            var newToken = await refreshAccessToken(refreshToken);

            if (newToken != null) {
              // Update the access token
              await TokenManager().setAccessToken(newToken);
              // Clone the original request and retry
              final newRequest = e.requestOptions;
              newRequest.headers["Authorization"] = "Bearer $newToken";
              return handler.resolve(await _dio.fetch(newRequest));
            }
          }
        }
        return handler.next(e);
      },
    ));
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
  }

  Dio get instance => _dio;

  Future<T?> request<T extends dynamic>(APIRequestRepresentable request) async {
    try {
      final Response<T> response = await _dio.request(
        request.url,
        options: Options(method: request.method.string, headers: request.headers),
        queryParameters: request.query,
        data: request.body,
      );
      return response.data;
    } on TimeoutException catch (_) {
      throw DioException.sendTimeout(timeout: const Duration(seconds: 25), requestOptions: RequestOptions());
    } on SocketException {
      throw DioException.connectionError(
        requestOptions: RequestOptions(),
        reason: 'Network is not available',
      );
    } on DioException catch (e) {
      String errorMessage = '';
      if (e.response == null ||
          e.response?.data == null ||
          e.response?.data == '' ||
          e.response?.data['message'] == null) {
        errorMessage = 'Something went wrong';
      } else {
        errorMessage = e.response?.data['message'];
      }

      throw APIResponseException(
        errorMessage,
        response: e.response,
        code: e.response?.statusCode,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> refreshAccessToken(String refreshToken) async {
    try {
      final response = await RefreshTokenRequest(refreshToken: refreshToken).request();
      if (response.statusCode == 200 && response.data != null) {
        // Storage service depend on Get Service. Must update on other source base
        final storage = g.Get.find<LocalStorageService>();
        final UserContext refreshUser = UserContext.fromJson(response.data["message"] as Map<String, dynamic>);
        storage.userContext = refreshUser;
        return refreshUser.accessToken;
      }
    } catch (e) {
      // clear local user data
      g.Get.find<LocalStorageService>().userContext = null;
    }
    return null;
  }
}

class RefreshTokenRequest<T> extends APIRequestRepresentable {
  final String refreshToken;
  RefreshTokenRequest({required this.refreshToken});

  @override
  get body => {
        "salt": refreshToken,
      };

  @override
  String get baseUrl => BaseUrls.baseUrl;

  @override
  Map<String, String>? get headers => null;

  @override
  HTTPMethod get method => HTTPMethod.post;

  @override
  String get endpoint => '/auth/refreshToken';

  @override
  Map<String, dynamic>? get query => null;

  @override
  Future<Response<T>> request() {
    final dio = Dio();
    return dio.post(baseUrl + endpoint, data: body);
  }

  @override
  String get url => baseUrl + endpoint;
}
