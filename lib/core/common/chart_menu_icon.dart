import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/text_utils.dart';

class HCartCounter extends StatelessWidget {
  const HCartCounter({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.shopping_bag, color: Colors.white),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(child: textNormal("2", Colors.white, 18.0)),
          ),
        ),
      ],
    );
  }
}
