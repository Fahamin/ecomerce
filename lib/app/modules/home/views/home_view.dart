import 'package:ecomerce/app/modules/categories/controllers/categories_controller.dart';
import 'package:ecomerce/app/modules/home/views/widgets/home_appbar.dart';
import 'package:ecomerce/app/modules/home/views/widgets/home_categories.dart';
import 'package:ecomerce/core/common/vertical_image_text.dart';
import 'package:ecomerce/core/utils/device/device_utility.dart';
import 'package:ecomerce/core/utils/helper_function.dart';
import 'package:ecomerce/core/utils/image_strings.dart';
import 'package:ecomerce/core/utils/size.dart';
import 'package:ecomerce/core/utils/text_utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/common/section_heading.dart';
import '../../../../core/common/chart_menu_icon.dart';
import '../../../../core/common/custom_searchbar.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/common/primary_header_container.dart';
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
                    child: Column(
                      children: [
                        /// Heading
                        HkSectionHeading(
                          title: 'Popular Categories',
                          textColor: HkColors.white,
                        ),
                        SizedBox(
                          height: HkSizes.spaceBtwItems,
                        ),

                        /// Categories
                        HkHomeCategories(),
                      ],
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


