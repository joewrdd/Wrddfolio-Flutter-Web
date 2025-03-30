import 'dart:math';

import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

class SpaceBackground extends StatefulWidget {
  final Widget child;
  final int starsCount;
  final double minStarSize;
  final double maxStarSize;
  final Color starColor;
  final double speed;
  final bool showNebula;

  const SpaceBackground({
    Key? key,
    required this.child,
    this.starsCount = 200,
    this.minStarSize = 0.5,
    this.maxStarSize = 2.5,
    this.starColor = Colors.white,
    this.speed = 0.1,
    this.showNebula = true,
  }) : super(key: key);

  @override
  _SpaceBackgroundState createState() => _SpaceBackgroundState();
}

class _SpaceBackgroundState extends State<SpaceBackground>
    with TickerProviderStateMixin {
  late AnimationController _twinkleController;

  @override
  void initState() {
    super.initState();
    _twinkleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _twinkleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 10, 5, 26),
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 19, 5, 44),
                Color(0xFF040613),
              ],
            ),
          ),
        ),

        if (widget.showNebula)
          Opacity(
            opacity: 0.15,
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.3,
                  right: -100,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(
                            255,
                            29,
                            7,
                            68,
                          ).withOpacity(0.5),
                          blurRadius: 120,
                          spreadRadius: 70,
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height * 0.6,
                  left: -50,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(
                            255,
                            32,
                            3,
                            68,
                          ).withOpacity(0.5),
                          blurRadius: 150,
                          spreadRadius: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        AnimatedBackground(
          behaviour: RandomParticleBehaviour(
            options: ParticleOptions(
              baseColor: widget.starColor,
              spawnOpacity: 0.0,
              opacityChangeRate: 0.25,
              minOpacity: 0.1,
              maxOpacity: 0.8,
              particleCount: widget.starsCount,
              spawnMaxRadius: widget.maxStarSize + 1.0,
              spawnMinRadius: 1.0,
              spawnMaxSpeed: widget.speed * 50,
              spawnMinSpeed: widget.speed * 10,
            ),
          ),
          vsync: this,
          child: widget.child,
        ),

        AnimatedBuilder(
          animation: _twinkleController,
          builder: (context, child) {
            return Opacity(
              opacity: 0.6 + (_twinkleController.value * 0.2),
              child: CustomPaint(painter: StarsPainter(), size: Size.infinite),
            );
          },
        ),
      ],
    );
  }
}

class StarsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Random random = Random(42);

    for (int i = 0; i < 100; i++) {
      final double x = random.nextDouble() * size.width;
      final double y = random.nextDouble() * size.height;
      final double radius = random.nextDouble() * 0.7 + 0.3;
      final Color starColor = Colors.white.withOpacity(
        0.5 + random.nextDouble() * 0.5,
      );
      final Paint paint = Paint()..color = starColor;

      if (random.nextDouble() > 0.8) {
        _drawStar(canvas, Offset(x, y), radius * 2, paint);
      } else {
        canvas.drawCircle(Offset(x, y), radius, paint);
      }
    }
  }

  void _drawStar(Canvas canvas, Offset center, double size, Paint paint) {
    final path = Path();
    final double halfSize = size / 2;
    final double innerRadius = halfSize * 0.4;

    for (int i = 0; i < 5; i++) {
      double outerAngle = i * 2 * pi / 5 - pi / 2;
      double innerAngle = outerAngle + pi / 5;

      Offset outerPoint = Offset(
        center.dx + cos(outerAngle) * halfSize,
        center.dy + sin(outerAngle) * halfSize,
      );

      Offset innerPoint = Offset(
        center.dx + cos(innerAngle) * innerRadius,
        center.dy + sin(innerAngle) * innerRadius,
      );

      if (i == 0) {
        path.moveTo(outerPoint.dx, outerPoint.dy);
      } else {
        path.lineTo(outerPoint.dx, outerPoint.dy);
      }

      path.lineTo(innerPoint.dx, innerPoint.dy);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
