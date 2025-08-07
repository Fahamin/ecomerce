import 'package:ecomerce/data/remote/category_service.dart';
import 'package:get/get.dart';

import '../controllers/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryService(), fenix: true);
    Get.lazyPut<CategoriesController>(() => CategoriesController());
  }
}
