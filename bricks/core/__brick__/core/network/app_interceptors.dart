import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_mason/core/cache/hive/hive_methods.dart';
import 'package:test_mason/core/network/status_code.dart';
import 'package:test_mason/core/routes/app_routers_import.dart';
import 'package:test_mason/core/utils/common_methods.dart';

class AppInterceptors extends Interceptor {
  AppInterceptors();

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');

    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.headers['Accept-Language'] = HiveMethods.getLang();

    if (HiveMethods.getToken() != null) {
      options.headers['Authorization'] = "Bearer ${HiveMethods.getToken()}";
    }

    // Check internet connectivity before sending request
    if (!await CommonMethods.hasConnection()) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: 'No Internet Connection',
          type: DioExceptionType.unknown,
        ),
      );
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');

    if (response.statusCode == StatusCode.unauthorized) {
      Navigator.of(AppRouters.navigatorKey.currentContext!).pushNamed('/login');
      return;
    }

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');

    // Handle no internet connection error
    if (err.type == DioExceptionType.unknown && err.error == 'No Internet Connection') {
      showDialog(
        context: AppRouters.navigatorKey.currentContext!,
        builder: (_) => const AlertDialog(
          title: Text('No Internet'),
          content: Text('Please check your connection and try again.'),
        ),
      );
    }

    super.onError(err, handler);
  }
}
