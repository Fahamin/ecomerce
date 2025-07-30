import 'package:ecomerce/app/modules/login/bindings/login_binding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'core/utils/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: HkAppTheme.lightTheme,
      darkTheme: HkAppTheme.darkTheme,
      initialRoute: AppPages.INITIAL,
      initialBinding: LoginBinding(),
      getPages: AppPages.routes,
    );
  }
}
