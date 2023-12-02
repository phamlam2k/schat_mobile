class ApiEndPoint {
  static final String baseUrl = 'https://api.schat.io.vn/v1';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String loginApi = '/auth/login';
  final String registerApi = '/auth/register';
}
