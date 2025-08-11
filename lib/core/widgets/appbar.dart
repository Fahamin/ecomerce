import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../utils/helper_function.dart';
import '../utils/size.dart';

class HkAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const HkAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HkHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back),
                color: dark ? Colors.white : Colors.black,
              )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,

        title: title,

        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
