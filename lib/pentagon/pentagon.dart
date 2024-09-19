import 'dart:math';

import 'package:flutter/widgets.dart';

class SamplePentagon extends CustomPainter {
  SamplePentagon({required this.color, required this.radius, required this.xRatio});
  final Color color;
  final double radius;
  final double xRatio;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(makePath(size.width, size.height), paint);
  }

  Path makePath(double x, double y) {
    final xPoint = x * xRatio;
    final yPoint = y * 1 / 2;

    final alpha = atan(yPoint / ((1 - xRatio) * x));
    final th = alpha / 2;
    final k = radius * tan(th);
    final xPrime = radius * sin(2 * th);
    final yPrime = radius * (1 - cos(2 * th));

    final a = radius / tan(alpha);
    final b = radius * cos(alpha) / tan(alpha);
    final c = b * radius / a;
    final p3x = x - b;
    final p3y = yPoint - c;
    final p4y = yPoint + c;

    return Path()
      ..moveTo(0, radius) // start from top left
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..lineTo(xPoint - k, 0)
      ..arcToPoint(Offset((xPoint - k + xPrime), yPrime), radius: Radius.circular(radius))
      ..lineTo(p3x, p3y) // right point
      ..arcToPoint(Offset(p3x, p4y), radius: Radius.circular(radius))
      ..lineTo((xPoint - k + xPrime), y - yPrime)
      ..arcToPoint(Offset(xPoint - k, y), radius: Radius.circular(radius))
      ..lineTo(radius, y)
      ..arcToPoint(Offset(0, y - radius), radius: Radius.circular(radius));
  }

  @override
  bool shouldRepaint(SamplePentagon oldDelegate) {
    return true;
  }
}
