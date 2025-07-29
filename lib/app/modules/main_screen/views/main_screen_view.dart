import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/helper_function.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({super.key});


  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
            ()=> NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) => controller.selectedIndex.value = value,
          backgroundColor: isDark ? dark : light,
          indicatorColor: isDark ? light.withOpacity(0.1) : dark.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Icons.favorite), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
          ],
        ),
      ),
      body: Obx(()=>  controller.screens[controller.selectedIndex.value]),
    );
  }
}

