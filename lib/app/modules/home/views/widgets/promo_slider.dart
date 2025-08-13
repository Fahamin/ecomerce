import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomerce/core/common/images/rounded_image.dart';
import 'package:ecomerce/core/utils/constants/colors.dart';
import 'package:ecomerce/core/utils/constants/image_strings.dart';
import 'package:ecomerce/core/utils/constants/size.dart';
import 'package:ecomerce/core/utils/text_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/common/custom_shapes/containers/circular_container.dart';
import '../../../../../core/widgets/simmer_effect.dart';
import '../../controllers/home_controller.dart';

class HkPromoSlider extends StatelessWidget {
  const HkPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Obx(() {
        return Column(
          children: [
            CarouselSlider(
                items: controller.banners
                    .map((banner) => HkRoundedImage(
                  imageUrl: banner,
                  isNetworkImage: false,

                ))
                    .toList(),
                options: CarouselOptions(
                  viewportFraction: 1,
                  onPageChanged: (index, reason) => controller.updatePageIndicator(index),
                )),
            const SizedBox(
              height: HkSizes.spaceBtwItems,
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < controller.banners.length; i++)
                    HkCircularContainer(
                      width: 20,
                      height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor: (controller.carouselCurrentIndex.value == i) ? HkColors.primary : HkColors.grey,
                    )
                ],
              ),
            ),
          ],
        );
      }
    );
  }
}
