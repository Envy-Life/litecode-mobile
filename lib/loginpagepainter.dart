import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class loginpainter extends StatefulWidget {
  AnimationController controller;
  loginpainter({Key? key, required this.controller}) : super(key: key);

  @override
  _loginpainterState createState() => _loginpainterState();
}

class _loginpainterState extends State<loginpainter> {
  late Animation<double> _animation1;
  @override
  void initState() {
    _animation1 = Tween(begin: 0.0, end: 1.0).animate(widget.controller);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: loginpainter1(_animation1),
      size: MediaQuery.of(context).size,
    );
  }
}

class loginpainter1 extends CustomPainter {
  late Animation<double> animation1;
  loginpainter1(this.animation1) : super(repaint: animation1);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xFF34D1FC).withOpacity(0.23);
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(0, -size.height * 0.5),
            width: size.height * 2.1,
            height:
                size.height * 1.2 + (size.height * 0.445 * animation1.value)),
        0,
        2 * math.pi,
        false,
        paint);
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width, -size.height * 0.5),
            width: size.height * 1.2,
            height:
                size.height * 1.2 + (size.height * 0.25 * animation1.value)),
        0,
        2 * math.pi,
        false,
        paint);
  }

  @override
  bool shouldRepaint(loginpainter1 oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(loginpainter1 oldDelegate) => false;
}
