import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';

class FooterTile extends StatelessWidget {
  const FooterTile({
    super.key,
    this.isSvg = false,
    required this.text,
    this.noImage = false,
    this.image,
    this.height = 20,
    this.width = 20,
  });

  final bool isSvg;
  final String text;
  final String? image;
  final bool noImage;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isSvg)
          SvgPicture.asset(
            image ?? '',
            color: Colors.white,
            height: 20,
            width: 20,
          ),
        if (!isSvg && !noImage)
          if (image == ConstantImages.linkedinIcon)
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Image.asset(
                image ?? '',
                color: Colors.white,
                height: height,
                width: width,
              ),
            )
          else
            Image.asset(
              image ?? '',
              color: Colors.white,
              height: height,
              width: width,
            ),
        if (noImage) const SizedBox(width: 0),
        const SizedBox(width: 4),
        Text(text, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
