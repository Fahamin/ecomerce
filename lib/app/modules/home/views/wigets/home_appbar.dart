import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/common/chart_menu_icon.dart';
import '../../../../../core/utils/text_utils.dart';
import '../../../../../core/wigets/appbar.dart';

class home_appbar extends StatelessWidget {
  const home_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HkAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textNormal("value", Colors.grey, 16.0),
          textNormal("sublitle", Colors.white, 18.0),
        ],
      ),
      actions: [
        HCartCounter(onPressed: () {}, iconColor: Colors.white),
      ],
    );
  }
}
