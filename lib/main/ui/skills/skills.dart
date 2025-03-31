import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_image.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/main/models/tool_info.dart';
import 'package:wrddfolio_flutter/main/ui/skills/widgets/skills_icons.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    // Define responsive values
    final containerWidth = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 70.0,
      tablet: 75.0,
      desktop: 75.0,
      largeDesktop: 80.0,
    );

    final labelFontSize = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 12.0,
      tablet: 13.0,
      desktop: 13.0,
      largeDesktop: 14.0,
    );

    final titleFontSize = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 24.0,
      tablet: 27.0,
      desktop: 30.0,
      largeDesktop: 34.0,
    );

    final descriptionFontSize = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 14.0,
      tablet: 15.0,
      desktop: 16.0,
      largeDesktop: 18.0,
    );

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.responsiveValue(
            context: context,
            defaultValue: 16.0,
            tablet: 24.0,
            desktop: 32.0,
          ),
        ),
        child: Column(
          children: [
            CircularContainer(
              height: 40,
              width: containerWidth,
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
                      colors: [ConstantColors.secondary, ConstantColors.white],
                    ),
                    width: 17,
                    height: 17,
                  ),
                  const SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: GradientText(
                      text: ConstantTexts.skillsText,
                      style: GoogleFonts.robotoSlab(fontSize: labelFontSize),
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

            SizedBox(
              height: ResponsiveHelper.responsiveValue(
                context: context,
                defaultValue: 12.0,
                tablet: 15.0,
                desktop: 15.0,
              ),
            ),

            Text(
              ConstantTexts.skillsDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(
                fontSize: titleFontSize,
                color: ConstantColors.white.withOpacity(0.8),
              ),
            ),

            SizedBox(
              height: ResponsiveHelper.responsiveValue(
                context: context,
                defaultValue: 20.0,
                tablet: 25.0,
                desktop: 25.0,
              ),
            ),

            Text(
              ConstantTexts.skillsDescription2,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(
                fontSize: descriptionFontSize,
                color: ConstantColors.white.withOpacity(0.8),
              ),
            ),

            SizedBox(
              height: ResponsiveHelper.responsiveValue(
                context: context,
                defaultValue: 25.0,
                tablet: 30.0,
                desktop: 30.0,
              ),
            ),

            SkillsIcons(tools: tools),

            SizedBox(height: 36),
            GradientText(
              text: ConstantTexts.flutterPower,
              style: GoogleFonts.orbitron(fontSize: 36),
              gradient: LinearGradient(
                colors: [ConstantColors.neonPurple, ConstantColors.secondary],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
