import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

class CircularArc extends StatefulWidget {
  const CircularArc({Key? key}) : super(key: key);

  @override
  State<CircularArc> createState() => _CircularArcState();
}

class _CircularArcState extends State<CircularArc>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    final curvedAnimation =
        CurvedAnimation(parent: animController, curve: Curves.easeInOutCubic);

    animation = Tween<double>(begin: 0.0, end: 3.14).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    animController.repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(15, 61, 62, 1.0),
      alignment: Alignment.center,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(300, 300),
            painter: ProgressArc(0, Colors.black54, true),
          ),
          CustomPaint(
            size: Size(300, 300),
            painter: ProgressArc(animation.value, Colors.redAccent, false),
          ),
          Positioned(
            left: 130,
            top: 150,
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white, fontSize: 30),
              child: Text(
                "${(animation.value / 3.14 * 100).round()}%",
              ),
            ),
          )
        ],
      ),
    );
  }
}

final Gradient gradient = new LinearGradient(
  colors: <Color>[
    Colors.greenAccent.withOpacity(1.0),
    Colors.yellowAccent.withOpacity(1.0),
    Colors.redAccent.withOpacity(1.0),
  ],
);

class ProgressArc extends CustomPainter {
  bool isBackground;
  double arc;
  Color progressColor;
  ProgressArc(this.arc, this.progressColor, this.isBackground);
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, 300, 300);
    final startAngle = math.pi;
    final sweepAngle = arc != null ? arc : math.pi;
    final userCenter = false;
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    if (!isBackground) {
      paint.shader = gradient.createShader(rect);
    }
    canvas.drawArc(rect, startAngle, sweepAngle, userCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
