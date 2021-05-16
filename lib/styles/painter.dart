import 'package:flutter/material.dart';

class MypainterBiken extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final _paintCircle = Paint()
      ..color = Color.fromRGBO(32, 89, 189, 0.9)
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset _center = Offset(size.width / 1.09, 0.15 * size.width);
    canvas.drawCircle(_center, 140, _paintCircle);

    final _paintCircle2 = Paint()
      ..color = Color.fromRGBO(32, 89, 189, 0.9)
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset _center2 = Offset(size.width / 1.12, 0.17 * size.width);
    canvas.drawCircle(_center2, 140, _paintCircle2);

    final _paintCircle3 = Paint()
      ..color = Color.fromRGBO(32, 89, 189, 0.9)
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset _center3 = Offset(size.width / 20.0, 1.70 * size.width);
    canvas.drawCircle(_center3, 130, _paintCircle3);

    final paintCircle4 = Paint()
      ..color = Color.fromRGBO(32, 89, 189, 0.9)
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset center4 = Offset(size.width / size.width, 1.65 * size.width);
    canvas.drawCircle(center4, 130, paintCircle4);

    final paintCircle5 = Paint()
      ..color = Color.fromRGBO(32, 89, 189, 0.9)
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset center5 = Offset(size.width / 0.85, 1.15 * size.width);
    canvas.drawCircle(center5, 100, paintCircle5);

    final paintCircle6 = Paint()
      ..color = Color.fromRGBO(32, 89, 189, 0.9)
      ..strokeWidth = 0.7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset center6 = Offset(size.width / 0.85, 1.10 * size.width);
    canvas.drawCircle(center6, 100, paintCircle6);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
