import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  final Dio _dio;

  ApiService(this._dio) {
    // dio.options.connectTimeout = const Duration(seconds: 3);
    // dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options, handler) async {
    //     final accessToken =
    //         await SecureSotrage.getToken().then((token) => token.accessToken);
    //     dio.options.headers['Authorization'] = accessToken;
    //     options.headers['Authorization'] = accessToken;
    //     log(dio.options.headers);
    //     log(options.headers);
    //     return handler.next(options);
    //   },
    //   onError: (e, handler) async {},
    // ));
  }

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = false,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SecureSotrage.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>get  ${_dio.options.baseUrl + url}');
      addHeader
          ? log(
              'accessToken ==> $addHeader  ${_dio.options.headers['authorization']}')
          : log('');
      final response =
          await _dio.get(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response}');
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SecureSotrage.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>post  ${_dio.options.baseUrl + url}');
      final response = await _dio.post(
        url,
        data: data is FormData ? data : data as Map<String, dynamic>?,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SecureSotrage.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>put  ${_dio.options.baseUrl + url}');
      final response = await _dio.put(url,
          data: data is FormData ? data : data as Map<String, dynamic>?,
          queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SecureSotrage.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>delete  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.delete(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }

  Future<Response<dynamic>> patch(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken =
            await SecureSotrage.getToken().then((token) => token.accessToken);
        _dio.options.headers.addAll(
          {
            'authorization': "Bearer $accessToken",
            ...headers ?? {'content-Type': 'application/json'}
          },
        );
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      log('api uri ==>patch  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.patch(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      log('Dio exception code => ${exception.response?.statusCode}');
      log('Dio exception => ${exception.response?.statusCode}');
      rethrow;
    } catch (e) {
      log('Exception => $e');
      rethrow;
    }
  }
}
