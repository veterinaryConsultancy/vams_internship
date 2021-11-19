import 'dart:math';

import 'package:flutter/material.dart';
import 'package:medicine_inventory/credit_meter_painter.dart';

class CreditMeter extends StatelessWidget {
  const CreditMeter({Key? key, required this.creditScore}) : super(key: key);
  final double creditScore;

  double getXpoint(double angle) {
    return 0 + cos(CreditMeterPainter.angelToRadian(-angle)) * (175);
  }

  double getYpoint(double angle) {
    return 0 + sin(CreditMeterPainter.angelToRadian(-angle)) * (175);
  }

  Widget getCreditText(double postionAngle, double textAngle, int creditLimit) {
    return Transform.translate(
      offset: Offset(getXpoint(postionAngle), getYpoint(postionAngle)),
      child: Transform.rotate(
        angle: CreditMeterPainter.angelToRadian(textAngle),
        child: Text(
          creditLimit.toString(),
          // style: Fonts.inter.copyWith(
          //     color: Color(0xff737373),
          //     fontSize: 10.sp,
          //     fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final xPointofArrow =
        0 + cos(CreditMeterPainter.getFinalRadian(creditScore)) * (150 / 1.4);
    final yPointofArrow =
        0 + sin(CreditMeterPainter.getFinalRadian(creditScore)) * (150 / 1.4);

    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          painter: CreditMeterPainter(creditScore: creditScore),
          child: SizedBox(
            height: 300,
            width: 300,
            child: Transform.translate(
              offset: Offset(xPointofArrow, yPointofArrow),
              child: Transform.rotate(
                angle: CreditMeterPainter.getFinalRadian(creditScore),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        ),
        getCreditText(5, 80, 850),
        getCreditText(50, 45, 750),
        getCreditText(85, 5, 650),
        getCreditText(120, -30, 550),
        getCreditText(175, -80, 300),
      ],
    );
  }
}
