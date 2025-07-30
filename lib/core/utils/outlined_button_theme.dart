import 'package:ecomerce/core/utils/size.dart';
import 'package:flutter/material.dart';

import 'colors.dart';


/* -- Light & Dark Outlined Button Themes -- */
class HkOutlinedButtonTheme {
  HkOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: HkColors.dark,
      side: const BorderSide(color: HkColors. borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: HkColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: HkSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HkSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: HkColors.light,
      side: const BorderSide(color: HkColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: HkSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(HkSizes.buttonRadius)),
    ),
  );
}
