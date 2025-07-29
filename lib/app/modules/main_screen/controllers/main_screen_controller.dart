import 'package:ecomerce/app/modules/favourite/views/favourite_view.dart';
import 'package:ecomerce/app/modules/home/views/home_view.dart';
import 'package:ecomerce/app/modules/setting/views/setting_view.dart';
import 'package:ecomerce/app/modules/store/views/store_view.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController {

  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeView(),
    const StoreView(),
    const FavouriteView(),
    const SettingView()
  ];
}