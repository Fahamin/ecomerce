

import 'package:ecomerce/core/common/images/circular_image.dart';
import 'package:flutter/material.dart';

import '../../app/modules/home/views/home_view.dart';
import '../utils/constants/colors.dart';
import '../utils/helper_function.dart';
import '../utils/constants/size.dart';

class HkVerticalImageText extends StatelessWidget {
  const HkVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = HkColors.white,
    this.backgroundColor,
    this.onTap,
    this.isNetworkImage = true
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final dark = HkHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: HkSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icon
            HkCircularImage(
                image: image,
              fit: BoxFit.fitWidth,
              padding: HkSizes.sm * 1.4,
              isNetworkImage: isNetworkImage,
              backgroundColor: backgroundColor,
              overlayColor: dark ? HkColors.light : HkColors.dark,
            ),
            const SizedBox(height: HkSizes.spaceBtwItems/2,),

            /// Text
            Expanded(
              child: SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}