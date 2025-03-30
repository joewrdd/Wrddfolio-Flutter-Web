import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.child,
    this.margin,
    this.padding,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.showBorder = false,
    this.showBorderStyle = false,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.grey,
    this.boxShadow,
  });

  final Widget? child;
  final double? width;
  final double radius;
  final double? height;
  final bool showBorder;
  final bool showBorderStyle;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
