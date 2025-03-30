import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class StarryBackground extends StatefulWidget {
  final Widget child;
  final Color backgroundColor;
  final int starsCount;
  final double minStarSize;
  final double maxStarSize;
  final Color starColor;
  final double speed;

  const StarryBackground({
    super.key,
    required this.child,
    this.backgroundColor = Colors.black,
    this.starsCount = 1000,
    this.minStarSize = 0.5,
    this.maxStarSize = 2.5,
    this.starColor = Colors.white,
    this.speed = 1,
  });

  @override
  _StarryBackgroundState createState() => _StarryBackgroundState();
}

class _StarryBackgroundState extends State<StarryBackground>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: AnimatedBackground(
        behaviour: SpaceBehaviour(backgroundColor: Colors.transparent),
        vsync: this,
        child: widget.child,
      ),
    );
  }
}
