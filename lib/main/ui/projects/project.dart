import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_image.dart';
import 'package:wrddfolio_flutter/common/styles/gradient_text.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/main/models/project_model.dart';
import 'package:wrddfolio_flutter/main/ui/projects/widgets/project_card.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/constants/texts.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key, required this.projects});

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircularContainer(
            height: 40,
            width: 90,
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
                    text: ConstantTexts.projectsText,
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
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 36, right: 36),
            child: GridView.builder(
              itemCount: projects.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 530,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              ),
              itemBuilder:
                  (context, index) => ProjectCard(project: projects[index]),
            ),
          ),
        ],
      ),
    );
  }
}
