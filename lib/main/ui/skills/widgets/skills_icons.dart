import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/app_container.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';

class SkillsIcons extends StatelessWidget {
  const SkillsIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppContainer(
              image: Image.asset(ConstantImages.toolFlutter),
              backgroundColor: Colors.transparent,
              imageSize: 60,
              size: 60,
            ),
            AppContainer(
              image: Image.asset(ConstantImages.toolDart),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolFirebase),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            AppContainer(
              image: Image.asset(ConstantImages.toolIos),
              backgroundColor: Colors.transparent,
              imageSize: 60,
              size: 55,
            ),
            AppContainer(
              image: Image.asset(ConstantImages.toolAndroid),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.gitHubWhiteLogo),
              backgroundColor: Colors.transparent,
              imageSize: 40,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolJavascript),
              backgroundColor: Colors.transparent,
              imageSize: 40,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolExpress),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolHtml),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolCss),
              backgroundColor: Colors.transparent,
              imageSize: 58,
              size: 58,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolReact),
              backgroundColor: Colors.transparent,
              imageSize: 40,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolNextjs),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppContainer(
              image: Image.asset(ConstantImages.toolCpp),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolJava),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolCanva),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolTailwind),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolMaterialUi),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolVercel),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 10),
            AppContainer(
              image: Image.asset(ConstantImages.toolReactQuery),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 10),
            AppContainer(
              image: Image.asset(ConstantImages.toolRedux),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
            const SizedBox(width: 10),
            AppContainer(
              image: Image.asset(ConstantImages.toolTypescript),
              backgroundColor: Colors.transparent,
              imageSize: 40,
              size: 40,
            ),
            const SizedBox(width: 10),
            AppContainer(
              image: Image.asset(ConstantImages.toolGemini),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppContainer(
              image: Image.asset(ConstantImages.toolNodejs),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolSupabase),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            AppContainer(
              image: Image.asset(ConstantImages.toolMongo),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            AppContainer(
              image: Image.asset(ConstantImages.toolHive),
              backgroundColor: Colors.transparent,
              imageSize: 50,
              size: 50,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolSql),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolPostgresql),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolGraphql),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
            const SizedBox(width: 6),
            AppContainer(
              image: Image.asset(ConstantImages.toolSqlite),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppContainer(
              image: Image.asset(ConstantImages.toolGit),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
            const SizedBox(width: 10),
            AppContainer(
              image: Image.asset(ConstantImages.toolStripe),
              backgroundColor: Colors.transparent,
              imageSize: 40,
              size: 40,
            ),
            const SizedBox(width: 10),
            AppContainer(
              image: Image.asset(ConstantImages.toolDocker),
              backgroundColor: Colors.transparent,
              imageSize: 45,
              size: 45,
            ),
            const SizedBox(width: 10),
            AppContainer(
              image: Image.asset(ConstantImages.toolFigma),
              backgroundColor: Colors.transparent,
              imageSize: 40,
              size: 40,
            ),
          ],
        ),
        SizedBox(height: 16),
        GradientText(
          text: ConstantTexts.flutterPower,
          style: GoogleFonts.orbitron(fontSize: 30),
          gradient: LinearGradient(
            colors: [ConstantColors.neonPurple, ConstantColors.secondary],
          ),
        ),
      ],
    );
  }
}
