import 'package:flutter/cupertino.dart';

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50); // Start at bottom-left (above the curve)
    
    // Create a quadratic bezier curve
    path.quadraticBezierTo(
      size.width / 2, // Control point at center x
      size.height,    // Control point at full height (creates the dip)
      size.width,     // End point at bottom-right
      size.height - 50 // End point y (same as start)
    );
    
    path.lineTo(size.width, 0); // Complete the rectangle
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}