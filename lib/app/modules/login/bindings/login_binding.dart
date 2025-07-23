import 'package:get/get.dart';

import '../../../data/services/google_auth_service.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GoogleAuthService>(() => GoogleAuthService());
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
