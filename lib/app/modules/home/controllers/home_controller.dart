import 'package:ecomerce/core/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var carouselCurrentIndex = 0.obs;
  var isLoading = false.obs;
  RxList<String> banners = <String>[].obs;

  /// Change the current index of the controller.
  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    banners.value = [
      HkImages.promoBanner1,
      HkImages.promoBanner2,
      HkImages.promoBanner3
    ];
  }
}
