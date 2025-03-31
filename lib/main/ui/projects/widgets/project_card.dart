import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/app_container.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/rounded_container.dart';
import 'package:wrddfolio_flutter/main/models/project_model.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final titleFontSize = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 16.0,
      tablet: 18.0,
      desktop: 20.0,
    );

    final descriptionFontSize = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 12.0,
      tablet: 13.0,
      desktop: 14.0,
    );

    final iconSize = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 20.0,
      tablet: 24.0,
      desktop: 28.0,
    );

    return TRoundedContainer(
      backgroundColor: ConstantColors.white.withOpacity(0.1),
      padding: EdgeInsets.zero,
      showBorder: true,
      borderColor: ConstantColors.neonPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.asset(
                project.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    project.title,
                    style: GoogleFonts.robotoSlab(
                      fontSize: titleFontSize,
                      color: ConstantColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 8),

                  Flexible(
                    child: Container(
                      constraints: const BoxConstraints(maxHeight: 120),
                      child: Text(
                        project.description,
                        style: GoogleFonts.robotoSlab(
                          fontSize: descriptionFontSize,
                          color: ConstantColors.white,
                        ),
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (var technology in project.technologies)
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: AppContainer(
                                    image: Image.asset(technology.image),
                                    size: iconSize,
                                    imageSize:
                                        technology.height * (iconSize / 20),
                                    borderRadius: technology.height,
                                    backgroundColor: ConstantColors.neonPurple,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          launchUrl(Uri.parse(project.link));
                        },
                        icon: Icon(
                          Iconsax.arrow_right_2,
                          color: ConstantColors.neonPurple,
                          size: iconSize,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
