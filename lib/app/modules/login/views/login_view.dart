import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/text_utils.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/email_text_filed.dart';
import '../../../../core/widgets/password_text_filed.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight:
            MediaQuery
                .of(context)
                .size
                .height - 32, // 32 = 16*2 padding
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        spaceHeight(35.0),
                        textNormalStart("Shop Maker", Colors.black, 24.0),
                        textNormalStart(
                          "Log in to Access Exclusive Deals and Simplify Your Shopping Experience",
                          Colors.black54,
                          14.0,
                        ),

                        spaceHeight(35.0),

                        EmailTextField(
                          controller: controller.emailController,
                          hintText: "Email",
                        ),
                        SizedBox(height: 15),
                        PasswordTextFiled(
                          controller: controller.passwordController,
                          hintText: "Password",
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                                  () =>
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: controller.rememberMe.value,
                                        onChanged: controller.toggleRememberMe,
                                      ),
                                      textNormal(
                                          "Remember Me", Colors.blue, 12.0),
                                    ],
                                  ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: textNormal(
                                "Forget Password?",
                                Colors.blue,
                                12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Obx(() {
                          return controller.isLoading.value
                              ? CircularProgressIndicator()
                              : CustomButton(
                            "Login",
                            onPressed: () {
                              //  controller.login();
                              Get.toNamed(Routes.HOME);
                            },
                          );
                        }),
                        spaceHeight(25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 1, // adjust height as needed
                              color: Colors.grey,
                            ),
                            textNormal("or Sing in with", Colors.grey, 10.0),
                            Container(
                              width: 100,
                              height: 1, // adjust height as needed
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() {
                              return controller.isLoading.value
                                  ? CircularProgressIndicator()
                                  : InkWell(
                                onTap: () {
                                  controller.signInWithGoogle();
                                },
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(
                                    "assets/images/gg.png",
                                  ),
                                ),
                              );
                            }),

                            InkWell(
                              onTap: () {},
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/fb.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Use Expanded or flexible space instead of Spacer

                // Add some bottom padding
              ],
            ),
          ),
        ),
      ),
    );
  }
}
