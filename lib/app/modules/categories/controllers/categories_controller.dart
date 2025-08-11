import 'package:ecomerce/data/model/category_model.dart';
import 'package:ecomerce/data/remote/category_service.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  final CategoryService categoryService = Get.find();

  var isLoading = false.obs;
  var categoryModel = CategoryModel().obs;
  var errorMessage = ''.obs;
  var categories = <String>[].obs;

  @override
  onInit() {
    super.onInit();
    getCategories();
  }

  Future<void> getCategories() async {
    isLoading.value = true;
    try {
      final response = await categoryService.getCategories();
      if (response.statusCode == 200) {
        categoryModel.value = CategoryModel.fromJson(response.data);
        categories.value = categoryModel.value.categories ?? [];
      } else {
        errorMessage.value = 'No categories found';
      }
    } catch (e) {
      errorMessage.value = 'Error fetching categories: $e';
    } finally {
      isLoading.value = false;
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    categoryModel.close();
    categories.close();
    isLoading.close();
    errorMessage.close();
  }
}
