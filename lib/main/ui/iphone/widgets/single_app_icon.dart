import 'package:flutter/material.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/app_container.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';

class SingleAppIcon extends StatelessWidget {
  const SingleAppIcon({
    super.key,
    required this.image,
    required this.label,
    required this.iconSize,
    required this.containerSize,
    required this.backgroundColor,
    this.imageColor,
    this.onTap,
  });

  final String image;
  final String label;
  final double iconSize;
  final double containerSize;
  final Color backgroundColor;
  final Color? imageColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      onTap: onTap ?? () {},
      backgroundColor: backgroundColor,
      image: Image.asset(image, color: imageColor, fit: BoxFit.cover),
      imageSize:
          (image == ConstantImages.whatsAppLogo ||
                  image == ConstantImages.linkedinLogoColored ||
                  image == ConstantImages.xLogo ||
                  image == ConstantImages.gitHubBlackLogo)
              ? 40
              : iconSize,
      size: containerSize,
      text: label,
      textStyle: TextStyle(
        fontSize: iconSize * 0.2,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}
