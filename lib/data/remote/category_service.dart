import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class CategoryService extends GetxService {
  final Dio _dio = Get.find<Dio>();

   Future<Response> getCategories() async {
    return await _dio.get('products/category');
  }

}
