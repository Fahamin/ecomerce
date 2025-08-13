import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../utils/device/device_utility.dart';
import '../utils/helper_function.dart';
import '../utils/constants/size.dart';
import '../utils/text_utils.dart';

class HSearchBar extends StatelessWidget {
  const HSearchBar({
    super.key,
    required this.value,
    this.showBackGroud = true,
    this.showBorder = true,
  });

  final String value;
  final bool showBackGroud, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = HkHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(HkSizes.defaultSpace),
      child: Container(
        width: HkDeviceUtils.getScreenHeight(),
        padding: EdgeInsets.all(HkSizes.md),
        decoration: BoxDecoration(
          color: showBackGroud
              ? isDark
              ? HkColors.dark
              : HkColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(HkSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: HkColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: HkColors.black),
            spaceWidth(HkSizes.spaceBtwItems),
            textNormal(value, HkColors.black, 15.0),
          ],
        ),
      ),
    );
  }
}