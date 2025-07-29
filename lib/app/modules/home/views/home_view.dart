import 'package:ecomerce/core/wigets/circle_shape.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/common/primary_header_container.dart';
import '../../../../core/wigets/bottomcurbe.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
