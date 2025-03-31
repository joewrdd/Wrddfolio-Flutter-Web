import 'package:flutter/material.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    final sectionHeight = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 150.0,
      tablet: 180.0,
      desktop: 200.0,
      largeDesktop: 240.0,
    );

    final galaxyImageHeight = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 320.0,
      tablet: 380.0,
      desktop: 450.0,
      largeDesktop: 500.0,
    );

    final galaxyImageWidth = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 700.0,
      tablet: 850.0,
      desktop: 990.0,
      largeDesktop: 1200.0,
    );

    return Container(
      width: double.infinity,
      height: sectionHeight,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: ResponsiveHelper.responsiveValue<double>(
              context: context,
              defaultValue: -140.0,
              tablet: -180.0,
              desktop: -215.0,
              largeDesktop: -240.0,
            ),
            child: Transform.rotate(
              angle: -0.1,
              alignment: Alignment.center,
              child: Transform.flip(
                flipY: true,
                child: SizedBox(
                  height: galaxyImageHeight,
                  width: galaxyImageWidth,
                  child: Opacity(
                    opacity: 0.9,
                    child: Image.asset(
                      ConstantImages.navBarVideo2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
