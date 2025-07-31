import 'package:ecomerce/app/modules/home/views/wigets/home_appbar.dart';
import 'package:ecomerce/core/utils/device/device_utility.dart';
import 'package:ecomerce/core/utils/helper_function.dart';
import 'package:ecomerce/core/utils/size.dart';
import 'package:ecomerce/core/utils/text_utils.dart';
import 'package:ecomerce/core/wigets/appbar.dart';
import 'package:ecomerce/core/wigets/circle_shape.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/common/HSectionHeading.dart';
import '../../../../core/common/chart_menu_icon.dart';
import '../../../../core/common/custom_searchbar.dart';
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
                  HSearchBar(value: "Search in Store"),
                  Padding(
                    padding: EdgeInsets.only(left: HkSizes.defaultSpace),
                    child: Hsectionheading(title: "Populars Categories"),
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: HkColors.white,
                              ),
                              child: Center(
                                child: Image(
                                  image: AssetImage(),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
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
