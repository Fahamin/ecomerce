import 'package:ecomerce/app/modules/categories/controllers/categories_controller.dart';
import 'package:get/get.dart';

import '../../../../data/remote/category_service.dart';
import '../../../../di/dio_client.dart';
import '../../../data/services/google_auth_service.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    setupDependencies();
    Get.lazyPut(() => CategoryService(), fenix: true);

    Get.lazyPut<GoogleAuthService>(() => GoogleAuthService());
    Get.lazyPut<CategoriesController>(() => CategoriesController());

    Get.lazyPut<LoginController>(() => LoginController());
  }
}
