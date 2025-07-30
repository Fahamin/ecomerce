import 'package:ecomerce/app/modules/home/views/wigets/home_appbar.dart';
import 'package:ecomerce/core/utils/device/device_utility.dart';
import 'package:ecomerce/core/utils/size.dart';
import 'package:ecomerce/core/utils/text_utils.dart';
import 'package:ecomerce/core/wigets/appbar.dart';
import 'package:ecomerce/core/wigets/circle_shape.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/common/chart_menu_icon.dart';
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
              child: Column(
                children: [
                  home_appbar(),
                  Padding(
                    padding: const EdgeInsets.all(HkSizes.defaultSpace),
                    child: Container(
                      width: HkDeviceUtils.getScreenHeight(),
                      padding: EdgeInsets.all(HkSizes.md),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(HkSizes.cardRadiusLg),
                        border: Border.all(color: HkColors.grey)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search,
                          color:HkColors. black,),
                          spaceWidth(14.0),
                          textNormal("Search in Store", HkColors.black, 15.0)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
