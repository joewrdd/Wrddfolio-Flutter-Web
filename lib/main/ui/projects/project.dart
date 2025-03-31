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
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';
import 'package:wrddfolio_flutter/utils/widgets/responsive_layout.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key, required this.projects});

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = ResponsiveHelper.responsiveValue<int>(
      context: context,
      defaultValue: 1,
      tablet: 2,
      desktop: 2,
      largeDesktop: 3,
    );

    final horizontalPadding = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 16.0,
      tablet: 24.0,
      desktop: 36.0,
      largeDesktop: 48.0,
    );

    final mainAxisExtent = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 480.0,
      tablet: 500.0,
      desktop: 520.0,
      largeDesktop: 520.0,
    );

    final gridSpacing = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 16.0,
      tablet: 20.0,
      desktop: 24.0,
      largeDesktop: 30.0,
    );

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

          ResponsiveConstrainedBox(
            desktopMaxWidth: 1800,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: GridView.builder(
                itemCount: projects.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisExtent: mainAxisExtent,
                  mainAxisSpacing: gridSpacing,
                  crossAxisSpacing: gridSpacing,
                ),
                itemBuilder:
                    (context, index) => ProjectCard(project: projects[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
