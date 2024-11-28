import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../services/injection_container.dart';
import 'api_consumer.dart';
import 'app_interceptors.dart';
import 'end_points.dart';
import 'status_code.dart';

class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({required this.client}) {
    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < StatusCode.internalServerError;
      };
    client.interceptors.add(sl<AppInterceptors>());
    if (kDebugMode) {
      client.interceptors.addAll(kDebugMode
          ? [
              PrettyDioLogger(
                requestHeader: true,
                requestBody: true,
                responseBody: true,
                responseHeader: false,
                compact: false,
                error: true,
                request: true,
              ),
            ]
          : []);
    }
  }

  @override
  Future get(String path, {Map<String, dynamic>? queryParameters}) async {
    final response = await client.get(path, queryParameters: queryParameters);
    return _handleResponseAsJson(response);
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? isFormData}) async {
    final response = await client.post(path,
        data: isFormData == true ? FormData.fromMap(body!) : body,
        queryParameters: queryParameters);
    return _handleResponseAsJson(response);
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? isFormData}) async {
    final response = await client.put(path,
        data: isFormData == true ? FormData.fromMap(body!) : body,
        queryParameters: queryParameters);
    return _handleResponseAsJson(response);
  }

  @override
  Future delete(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      bool? isFormData}) async {
    final response = await client.get(path,
        data: isFormData == true ? FormData.fromMap(body!) : body,
        queryParameters: queryParameters);
    return _handleResponseAsJson(response);
  }

  dynamic _handleResponseAsJson(Response<dynamic> response) {
    final responseJson = jsonDecode(response.data.toString());
    return responseJson;
  }
}
