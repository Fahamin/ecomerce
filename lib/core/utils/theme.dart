import 'package:ecomerce/core/utils/text_field_theme.dart';
import 'package:ecomerce/core/utils/text_theme.dart';
import 'package:flutter/material.dart';

import 'appbar_theme.dart';
import 'bottom_sheet_theme.dart';
import 'checkbox_theme.dart';
import 'chip_theme.dart';
import 'colors.dart';
import 'elevated_button_theme.dart';
import 'outlined_button_theme.dart';

class HkAppTheme {
  HkAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: HkColors.grey,
    brightness: Brightness.light,
    primaryColor: HkColors.primary,
    textTheme: HkTextTheme.lightTextTheme,
    chipTheme: HkChipTheme.lightChipTheme,
    scaffoldBackgroundColor:HkColors. white,
    appBarTheme: HkAppBarTheme.lightAppBarTheme,
    checkboxTheme: HkCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: HkBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: HkElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: HkOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: HkTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor:HkColors. grey,
    brightness: Brightness.dark,
    primaryColor: HkColors.primary,
    textTheme: HkTextTheme.darkTextTheme,
    chipTheme: HkChipTheme.darkChipTheme,
    scaffoldBackgroundColor:HkColors. black,
    appBarTheme: HkAppBarTheme.darkAppBarTheme,
    checkboxTheme: HkCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: HkBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: HkElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: HkOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: HkTextFormFieldTheme.darkInputDecorationTheme,
  );
}
