import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_image.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/main/ui/skills/widgets/skills_icons.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircularContainer(
            height: 40,
            width: 75,
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
          const SizedBox(height: 15),
          Text(
            ConstantTexts.skillsDescription,
            style: GoogleFonts.robotoSlab(
              fontSize: 30,
              color: ConstantColors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            ConstantTexts.skillsDescription2,
            style: GoogleFonts.robotoSlab(
              fontSize: 16,
              color: ConstantColors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 30),

          SkillsIcons(),
        ],
      ),
    );
  }
}
