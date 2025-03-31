import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_image.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({
    super.key,
    required this.fontSize,
    required this.width,
  });

  final double fontSize;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      height: 40,
      width: width,
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
              text: 'Welcome To The Digital Future',
              style: GoogleFonts.robotoSlab(fontSize: fontSize),
              gradient: LinearGradient(
                colors: [ConstantColors.secondary, ConstantColors.paleBlue],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
