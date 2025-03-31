import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key, required this.fontSize});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ConstantTexts.mainHeroTextPrefix,
              style: GoogleFonts.dmSans(
                fontSize: fontSize,
                color: ConstantColors.white,
              ),
            ),
            GradientText(
              text: ConstantTexts.mainHeroTextHighlight,
              style: GoogleFonts.dmSans(fontSize: fontSize),
              gradient: LinearGradient(
                colors: [ConstantColors.neonPurple, ConstantColors.white],
              ),
            ),
          ],
        ),
        Text(
          ConstantTexts.mainHeroText2,
          style: GoogleFonts.dmSans(
            fontSize: fontSize,
            color: ConstantColors.white,
          ),
        ),
      ],
    );
  }
}
