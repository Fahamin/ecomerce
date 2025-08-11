import 'package:get/get.dart';

import '../modules/categories/bindings/categories_binding.dart';
import '../modules/categories/views/categories_view.dart';
import '../modules/favourite/bindings/favourite_binding.dart';
import '../modules/favourite/views/favourite_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main_screen/bindings/main_screen_binding.dart';
import '../modules/main_screen/views/main_screen_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';
import '../modules/store/bindings/store_binding.dart';
import '../modules/store/views/store_view.dart';
import '../modules/subcategori/bindings/subcategori_binding.dart';
import '../modules/subcategori/views/subcategori_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(name: _Paths.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Paths.STORE,
      page: () => StoreView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORIES,
      page: () => CategoriesView(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: _Paths.SUBCATEGORI,
      page: () => SubcategoriView(),
      binding: SubcategoriBinding(),
    ),
  ];
}
