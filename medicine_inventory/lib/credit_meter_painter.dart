// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class CreditMeterPainter extends CustomPainter {
  final double creditScore;

  CreditMeterPainter({required this.creditScore});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;
    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawArc(
        Rect.fromCenter(
            center: center, width: size.width - 15, height: size.height - 15),
        -angelToRadian(0),
        -angelToRadian(180),
        false,
        paint
          ..style = PaintingStyle.fill
          ..color = Colors.grey.shade200);

    //First Curv 750-850
    canvas.drawArc(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
        -angelToRadian(0),
        -angelToRadian(45),
        false,
        paint
          ..style = PaintingStyle.stroke
          ..color = (creditScore <= 850 && creditScore > 750)
              ? Color(0xff1FBA68)
              : Color(0xFF4B755F));
    //Second Curv 650-750
    canvas.drawArc(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
        -angelToRadian(55),
        -angelToRadian(25),
        false,
        paint
          ..color = (creditScore <= 750 && creditScore > 650)
              ? Color(0xff63aae8)
              : Color(0xFF153958));
    //Third Curv 550-650
    canvas.drawArc(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
        -angelToRadian(90),
        -angelToRadian(25),
        false,
        paint
          ..color = (creditScore <= 650 && creditScore > 550)
              ? Color(0xffEC6D00)
              : Color(0xFFDDB38F));
    //Fourth Curve 300-550
    canvas.drawArc(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
        -angelToRadian(125),
        -angelToRadian(55),
        false,
        paint
          ..color = (creditScore <= 550 && creditScore > 300)
              ? Color(0xFFE23359)
              : Color(0xffF8D7DE));

    //White Semicircle
    canvas.drawArc(
        Rect.fromCenter(
            center: center, width: size.width / 1.5, height: size.height / 1.5),
        -angelToRadian(0),
        -angelToRadian(180),
        false,
        paint
          ..style = PaintingStyle.fill
          ..color = Colors.white);

    //Semicircle Border
    canvas.drawArc(
        Rect.fromCenter(
            center: center, width: size.width / 2, height: size.height / 2),
        angelToRadian(0),
        -angelToRadian(180),
        false,
        paint
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
          ..color = Colors.grey);

    final raduis = size.width / 2;
    final xPoint = center.dx + cos(getFinalRadian(creditScore)) * raduis;
    final yPoint = center.dx + sin(getFinalRadian(creditScore)) * raduis;

    //Outside Circle
    canvas.drawCircle(
        Offset(xPoint, yPoint),
        10,
        paint
          ..color = Colors.white
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke);
  }

  //Convert degree to Radian
  static double angelToRadian(double angle) {
    return angle * (pi / 180);
  }

  //Get a final angle with creditScore
  static double getFinalRadian(double creditScore) {
    return angelToRadian(-getAngle(creditScore));
  }

  //Get angle using creditScore
  static double getAngle(double creditScore) {
    if (creditScore > 850) {
      return 0;
    } else if (creditScore <= 850 && creditScore > 750) {
      return 45 - ((creditScore - 750) / 2.22);
    } else if (creditScore <= 750 && creditScore > 650) {
      return 80 - ((creditScore - 650) / 4);
    } else if (creditScore <= 650 && creditScore > 550) {
      return 115 - ((creditScore - 550) / 4);
    } else if (creditScore <= 550 && creditScore > 300) {
      return 180 - ((creditScore - 300) / 4.54);
    } else {
      return 180;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
