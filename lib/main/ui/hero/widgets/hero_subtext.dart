import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';

class HeroSubtext extends StatelessWidget {
  const HeroSubtext({super.key, required this.fontSize});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 600),
      child: Text(
        "Pushing the boundaries of technology and innovation. Transforming ideas into cutting-edge digital experiences. Welcome to the future of development.",
        style: GoogleFonts.dmSans(
          fontSize: fontSize,
          color: ConstantColors.darkGrey.withOpacity(0.7),
          height: 1.5,
        ),
        softWrap: true,
      ),
    );
  }
}
