import 'package:ecomerce/core/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.background = cardbg,
  });

  final double width;
  final double height;
  final double radius;
  final double padding;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 400,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: background,
      ),

    );
  }
}
