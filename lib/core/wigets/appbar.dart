import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';
import '../utils/helper_function.dart';
import '../utils/size.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const HAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    var isDark = isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HkSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back),
                color: isDark ? white : dark,
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
