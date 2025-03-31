import 'dart:ui';

class AppIconInfo {
  final String image;
  final String label;
  final Color backgroundColor;
  final Color? imageColor;
  final VoidCallback? onTap;
  final double iconScale;

  AppIconInfo({
    required this.image,
    required this.label,
    required this.backgroundColor,
    this.imageColor,
    this.onTap,
    this.iconScale = 1.0,
  });
}
