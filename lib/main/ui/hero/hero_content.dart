import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_image.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/common/widgets/animations/animated_button.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/common/widgets/images/circular_image.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularContainer(
                height: 40,
                width: 235,
                showBorder: true,
                boxShadow: [
                  BoxShadow(
                    color: ConstantColors.neonPurple.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
                borderColor: ConstantColors.neonPurple.withOpacity(0.5),
                backgroundColor: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GradientImage(
                      image: ConstantImages.whiteStar3,
                      gradient: LinearGradient(
                        colors: [
                          ConstantColors.secondary,
                          ConstantColors.white,
                        ],
                      ),
                      width: 17,
                      height: 17,
                    ),
                    const SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: GradientText(
                        text: 'Welcome To The Digital Future',
                        style: GoogleFonts.robotoSlab(fontSize: 13),
                        gradient: LinearGradient(
                          colors: [
                            ConstantColors.secondary,
                            ConstantColors.paleBlue,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Row(
                children: [
                  Text(
                    ConstantTexts.mainHeroTextPrefix,
                    style: GoogleFonts.dmSans(
                      fontSize: 55,
                      color: ConstantColors.white,
                    ),
                  ),
                  GradientText(
                    text: ConstantTexts.mainHeroTextHighlight,
                    style: GoogleFonts.dmSans(fontSize: 55),
                    gradient: LinearGradient(
                      colors: [ConstantColors.neonPurple, ConstantColors.white],
                    ),
                  ),
                ],
              ),
              Text(
                ConstantTexts.mainHeroText2,
                style: GoogleFonts.dmSans(
                  fontSize: 55,
                  color: ConstantColors.white,
                ),
              ),
              const SizedBox(height: 36),
              Text(
                ConstantTexts.subHeroText,
                style: GoogleFonts.dmSans(
                  fontSize: 18,
                  color: ConstantColors.darkGrey.withOpacity(0.7),
                ),
                softWrap: true,
              ),
              const SizedBox(height: 36),
              AnimatedButton(
                onTap: () {},
                width: 200,
                text: ConstantTexts.exploreNowText,
              ),
            ],
          ),
          const CircularImage(
            image: ConstantImages.softwarePng3,
            width: 800,
            height: 800,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
