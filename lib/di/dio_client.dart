// dio_provider.dart
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioProvider {
  static Dio? _dio;

  static Dio get dio {
    if (_dio == null) {
      _dio = _createDio();
    }
    return _dio!;
  }

  static Dio _createDio() {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://your-api-base-url.com',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ));

    // Add interceptors
    dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
      requestHeader: true,
    ));

    // Add your other interceptors here (auth, error handling, etc.)

    return dio;
  }
}

// Register Dio in GetX
void setupDependencies() {
  Get.put<Dio>(DioProvider.dio, permanent: true);
}