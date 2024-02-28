import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'Authorization': "Bearer $accessToken",
          ...headers ?? {'content-Type': 'application/json'} //
        },
      );
      print('api uri ==>  ${_dio.options.baseUrl + url}');
      print('accessToken ==>  ${_dio.options.headers['Authorization']}');
      final response =
          await _dio.get(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401 ||
          exception.response?.statusCode == 403) {
        //await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'Authorization': "Bearer $accessToken",
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      print('api uri ==>  ${_dio.options.baseUrl + url}');
      final response = await _dio.post(
        url,
        data: data is FormData ? data : data as Map<String, dynamic>?,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401 ||
          exception.response?.statusCode == 403) {
        // await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
  }) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'Authorization': "Bearer $accessToken",
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      print('api uri ==>  ${_dio.options.baseUrl + url}');
      final response = await _dio.put(url,
          data: data is FormData ? data : data as Map<String, dynamic>?,
          queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401 ||
          exception.response?.statusCode == 403) {
        //await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'Authorization': "Bearer $accessToken",
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      print('api uri ==>  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.delete(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401 ||
          exception.response?.statusCode == 403) {
        //await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> patch(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'Authorization': "Bearer $accessToken",
          ...headers ?? {'content-Type': 'application/json'}
        },
      );
      print('api uri ==>  ${_dio.options.baseUrl + url}');
      final response =
          await _dio.patch(url, data: data, queryParameters: queryParameters);
      return response;
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 401 ||
          exception.response?.statusCode == 403) {
        // await _refreshAccessToken();
        return await _retry(exception.requestOptions);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  // _refreshAccessToken() async {
  //   try {
  //     print('=====================================================');
  //     print('=======================refresh=======================');
  //     print('=====================================================');
  //     final token =
  //         await SecureSotrage.getToken().then((token) => token.refreshToken);
  //     final response = await Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl))
  //         .post(ApiEndPoints.refreshUrl, data: {'refresh': token});
  //     final data = RefreshResponse.fromJson(response.data);
  //     await SecureSotrage.setAccessToken(accessToken: data.access!);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      print(
          'accessToken ======================================================');
      print(accessToken);
      _dio.options.headers['Authorization'] = "Bearer $accessToken";
      print('headers');
      print(_dio.options.headers);
      return await _dio.request(requestOptions.path,
          queryParameters: requestOptions.queryParameters,
          data: requestOptions.data);
    } catch (e) {
      rethrow;
    }
  }
}
