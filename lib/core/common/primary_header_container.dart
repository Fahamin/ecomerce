
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../wigets/bottomcurbe.dart';
import '../wigets/circle_shape.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            color: HkColors.primary,
            child: SizedBox(
              height: 400,
              child: Stack(
                children: [
                  Positioned(top: -150, right: -250, child: CircleShape(background: Colors.white10)),
                  Positioned(top: 100, right: -300, child: CircleShape(background: Colors.white10)),
                  child

                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}