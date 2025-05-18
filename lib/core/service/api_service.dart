import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:study_case/core/constant/contant.dart';

class ApiService {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: baseUrl))
        ..transformer = BackgroundTransformer()
        ..options.validateStatus = (int? status) => true;

  ApiService() {
    if (kDebugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }
  }

  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      return await _dio.get(path, queryParameters: queryParams);
    } catch (e) {
      rethrow;
    }
  }
}
