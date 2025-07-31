import 'package:ecomerce/core/utils/colors.dart';
import 'package:ecomerce/core/utils/size.dart';
import 'package:ecomerce/core/utils/text_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hsectionheading extends StatelessWidget {
  const Hsectionheading({
    super.key,
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.buttonTitle = "View All",
    this.onTap,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        textNormal(title, HkColors.white, HkSizes.md),
        if(showActionButton)
          TextButton(
            onPressed: onTap,
            child: Text(buttonTitle),
          )

      ],
    );
  }
}
