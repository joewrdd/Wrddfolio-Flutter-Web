import 'package:flutter/material.dart';
import 'dart:math' as math;

class AppContainer extends StatelessWidget {
  final Color backgroundColor;
  final Widget image;
  final double imageSize;
  final double size;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final String? text;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  const AppContainer({
    super.key,
    this.backgroundColor = Colors.transparent,
    required this.image,
    this.imageSize = 50.0,
    this.size = 80.0,
    this.borderRadius = 16.0,
    this.padding,
    this.border,
    this.boxShadow,
    this.text,
    this.textStyle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry effectivePadding =
        padding ?? EdgeInsets.all(math.max(0, (size - imageSize) / 2 * 0.3));

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(borderRadius),
              border: border,
              boxShadow:
                  boxShadow ??
                  [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: const Offset(0, 2),
                    ),
                  ],
            ),
            padding: effectivePadding,
            child: Center(
              child: SizedBox(
                width: imageSize,
                height: imageSize,
                child: FittedBox(fit: BoxFit.contain, child: image),
              ),
            ),
          ),
        ),
        if (text != null)
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              text!,
              style: textStyle ?? const TextStyle(fontSize: 12),
            ),
          ),
      ],
    );
  }
}
