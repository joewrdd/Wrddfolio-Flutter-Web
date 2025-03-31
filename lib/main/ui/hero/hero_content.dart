import 'package:flutter/material.dart';
import 'package:wrddfolio_flutter/common/widgets/animations/animated_button.dart';
import 'package:wrddfolio_flutter/common/widgets/images/circular_image.dart';
import 'package:wrddfolio_flutter/main/ui/hero/widgets/hero_subtext.dart';
import 'package:wrddfolio_flutter/main/ui/hero/widgets/hero_text.dart';
import 'package:wrddfolio_flutter/main/ui/hero/widgets/welcome_container.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';
import 'package:wrddfolio_flutter/utils/widgets/responsive_layout.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, isMobile, isTablet, isDesktop) {
        final containerWidth = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 235,
          tablet: 250,
          desktop: 285,
          largeDesktop: 300,
        );

        final fontSize = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 13,
          tablet: 13,
          desktop: 14,
          largeDesktop: 15,
        );

        final heroTextSize = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 35,
          tablet: 45,
          desktop: 55,
          largeDesktop: 60,
        );

        final subHeroTextSize = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 16,
          tablet: 17,
          desktop: 18,
          largeDesktop: 20,
        );

        final buttonWidth = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 180,
          tablet: 190,
          desktop: 200,
          largeDesktop: 220,
        );

        final imageSize = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 380,
          tablet: 600,
          desktop: 700,
          largeDesktop: 750,
        );

        final horizontalPadding =
            ResponsiveHelper.responsiveValue<EdgeInsetsGeometry>(
              context: context,
              defaultValue: const EdgeInsets.symmetric(horizontal: 20.0),
              tablet: const EdgeInsets.symmetric(horizontal: 30.0),
              desktop: const EdgeInsets.symmetric(horizontal: 40.0),
              largeDesktop: const EdgeInsets.symmetric(horizontal: 60.0),
            );

        if (isMobile) {
          return Padding(
            padding: horizontalPadding as EdgeInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),

                WelcomeContainer(width: containerWidth, fontSize: fontSize),

                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: HeroText(fontSize: heroTextSize),
                ),
                const SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: HeroSubtext(fontSize: subHeroTextSize),
                ),
                const SizedBox(height: 30),

                AnimatedButton(
                  onTap: () {},
                  width: buttonWidth,
                  text: ConstantTexts.exploreNowText,
                  icon: Icons.arrow_forward,
                ),
                const SizedBox(height: 50),

                // Hero Image
                Center(
                  child: CircularImage(
                    image: ConstantImages.softwarePng3,
                    width: imageSize * 0.9,
                    height: imageSize * 0.9,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          );
        }

        return Padding(
          padding: horizontalPadding as EdgeInsets,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  constraints: BoxConstraints(maxWidth: isDesktop ? 600 : 450),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WelcomeContainer(
                        width: containerWidth,
                        fontSize: fontSize,
                      ),
                      SizedBox(height: isDesktop ? 36 : 30),
                      HeroText(fontSize: heroTextSize),
                      SizedBox(height: isDesktop ? 36 : 30),
                      HeroSubtext(fontSize: subHeroTextSize),
                      SizedBox(height: isDesktop ? 36 : 30),
                      AnimatedButton(
                        onTap: () {},
                        width: buttonWidth,
                        text: ConstantTexts.exploreNowText,
                        icon: Icons.arrow_forward,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(width: 30),

              Flexible(
                flex: 6,
                child: Center(
                  child: CircularImage(
                    image: ConstantImages.softwarePng3,
                    width: imageSize,
                    height: imageSize,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
