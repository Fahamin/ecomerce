import 'package:ecomerce/core/common/custom_shapes/containers/circular_container.dart';
import 'package:ecomerce/core/common/images/rounded_image.dart';
import 'package:ecomerce/core/utils/constants/image_strings.dart';
import 'package:ecomerce/core/utils/constants/size.dart';
import 'package:ecomerce/core/utils/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../styles/shadows.dart';

class HkProductCardVertical extends StatelessWidget {
  const HkProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = HkHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      decoration: BoxDecoration(
        boxShadow: [HkShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(HkSizes.productImageRadius),
        color: isDark ? HkColors.darkerGrey : HkColors.white,
      ),
      child: HkRoundedContainer(
        height: 180,
        width: 180,
        padding: const EdgeInsets.all(HkSizes.sm),
        backgroundColor: isDark ? HkColors.dark : HkColors.light,
        child: Stack(
          children: [
            Center(
              child: HkRoundedImage(
                imageUrl: HkImages.onBoardingImage1,
                applyImageRadius: true,
              ),
            ),
            Positioned(
              top: 12,
              child: HkRoundedContainer(
                backgroundColor: HkColors.warning,
                radius: HkSizes.sm,
                padding: EdgeInsets.symmetric(
                  horizontal: HkSizes.sm,
                  vertical: HkSizes.xs,
                ),
                child: Text(
                  "25%",
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge!.apply(color: HkColors.black),
                ),
              ),
            ),
            
            Positioned(child: HkCircularContainer())
          ],
        ),
      ),
    );
  }
}
