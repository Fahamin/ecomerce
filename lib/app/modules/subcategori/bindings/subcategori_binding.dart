import 'package:get/get.dart';

import '../controllers/subcategori_controller.dart';

class SubcategoriBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubcategoriController>(
      () => SubcategoriController(),
    );
  }
}
