import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class landingpainter extends StatefulWidget {
  AnimationController controller;
  landingpainter({Key? key, required this.controller}) : super(key: key);

  @override
  _landingpainterState createState() => _landingpainterState();
}

class _landingpainterState extends State<landingpainter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation1 = Tween(begin: 0.0, end: 1.0).animate(widget.controller);
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: landerPainter(_animation1),
      size: MediaQuery.of(context).size,
    );
  }
}

class landerPainter extends CustomPainter {
  late Animation<double> animation1;
  landerPainter(this.animation1) : super(repaint: animation1);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xFF34D1FC).withOpacity(0.23);
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width / 2, -size.height / 2),
            width: size.height * 2.1,
            height: size.height * 1 + (size.height * 1.5 * animation1.value)),
        0,
        2 * math.pi,
        false,
        paint);
  }

  @override
  bool shouldRepaint(landerPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(landerPainter oldDelegate) => false;
}
