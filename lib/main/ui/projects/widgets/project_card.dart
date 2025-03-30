import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/app_container.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/rounded_container.dart';
import 'package:wrddfolio_flutter/main/models/project_model.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      backgroundColor: ConstantColors.white.withOpacity(0.1),
      padding: EdgeInsets.zero,
      showBorder: true,
      borderColor: ConstantColors.neonPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              project.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: GoogleFonts.robotoSlab(
                    fontSize: 16,
                    color: ConstantColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  project.description,
                  style: GoogleFonts.robotoSlab(
                    fontSize: 12,
                    color: ConstantColors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        for (var technology in project.technologies)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: AppContainer(
                              image: Image.asset(technology.image),
                              size: 20,
                              imageSize: technology.height,
                              borderRadius: technology.height,
                              backgroundColor: ConstantColors.neonPurple,
                            ),
                          ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse(project.link));
                      },
                      icon: Icon(
                        Iconsax.arrow_right_2,
                        color: ConstantColors.neonPurple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
