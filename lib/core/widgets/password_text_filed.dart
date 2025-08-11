import 'package:ecomerce/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PasswordTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  PasswordTextFiled({
    super.key,
    required this.controller,
    required this.hintText,
  });

  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: controller,
        obscureText: loginController.obscureText.value,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins",
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black54),
          filled: false,
          prefixIcon: Icon(Icons.email),
          suffixIcon: IconButton(
            onPressed: () {
              loginController.toggleObscure();
            },
            icon: loginController.obscureText.value
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
