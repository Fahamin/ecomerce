import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../data/services/google_auth_service.dart';
import '../../../routes/app_pages.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  var obscureText = true.obs;

  var isLoading = false.obs;

  void toggleObscure() {
    obscureText.value = !obscureText.value;
  }

  var rememberMe = false.obs;

  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }

  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    try {
      var response = await http.post(
        Uri.parse("https://yourapi.com/login"),
        body: {
          "email": emailController.text,
          "password": passwordController.text,
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        Get.snackbar("Success", "Login Successful");

        Get.toNamed(Routes.HOME);
      } else {
        Get.snackbar("Error", "Invalid credentials");
      }
    } catch (e) {
      Get.snackbar("Error", "Something went wrong");
    } finally {
      isLoading.value = false;
    }
  }

  final GoogleAuthService _authService = Get.find();
  Rx<User?> user = Rx<User?>(null);

  @override
  void onInit() {
    user.bindStream(FirebaseAuth.instance.authStateChanges());
    super.onInit();
  }

  Future<void> signInWithGoogle() async {
    try {
      isLoading.value = true;
      await _authService.signInWithGoogle();
    } catch (e) {
      isLoading.value = false;

      Get.snackbar('Sign In Failed', e.toString());
    } finally {
      isLoading.value = false;
    }

    Future<void> signOut() async {
      await _authService.signOut();
    }
  }
}
