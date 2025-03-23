import 'dart:convert';
import 'package:get/get.dart';
import 'package:higertechapp/app/config/app_config.dart';

class ApiService extends GetConnect {

  final String _baseUrl = AppConfig.baseUrl; 
  final String _username = AppConfig.username;
  final String _password = AppConfig.password;

  @override
  void onInit() {
    httpClient.baseUrl = _baseUrl;
    httpClient.defaultContentType = 'application/json';
    httpClient.addRequestModifier<dynamic>((request) {
      final auth = 'Basic ${base64Encode(utf8.encode('$_username:$_password'))}';
      request.headers['Authorization'] = auth;
      return request;
    });

    super.onInit();
  }

  Future<ApiResponse> getRequest(String endpoint) async {
    final response = await get(endpoint);
    return _handleResponse(response);
  }

  Future<ApiResponse> postRequest(String endpoint, dynamic body) async {
    final response = await post(endpoint, body);
    return _handleResponse(response);
  }

  Future<ApiResponse> patchRequest(String endpoint, dynamic body) async {
    final response = await patch(endpoint, body);
    return _handleResponse(response);
  }

  Future<ApiResponse> deleteRequest(String endpoint) async {
    final response = await delete(endpoint);
    return _handleResponse(response);
  }

  ApiResponse _handleResponse(Response response) {
    try {
      final body = response.body;
      return ApiResponse(
        code: body['code'] ?? response.statusCode ?? 500,
        message: body['message'] ?? 'Unknown Error',
        data: body['data'],
      );
    } catch (e) {
      return ApiResponse(
        code: response.statusCode ?? 500,
        message: 'Invalid response format',
        data: null,
      );
    }
  }
}


class ApiResponse {
  final int code;
  final String message;
  final dynamic data;

  ApiResponse({
    required this.code,
    required this.message,
    this.data,
  });

  bool get isSuccess => code == 200;
}
