import 'package:flutter/material.dart';

class GradientImage extends StatelessWidget {
  const GradientImage({
    super.key,
    required this.image,
    required this.gradient,
    required this.width,
    required this.height,
  });

  final String image;
  final Gradient gradient;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      blendMode: BlendMode.srcIn,
      child: Image.asset(
        image,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
