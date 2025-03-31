import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wrddfolio_flutter/main/models/project_model.dart';
import 'package:wrddfolio_flutter/main/ui/appbar/appbar.dart';
import 'package:wrddfolio_flutter/main/ui/background/space_background.dart';
import 'package:wrddfolio_flutter/main/ui/cv/cv.dart';
import 'package:wrddfolio_flutter/main/ui/footer/footer.dart';
import 'package:wrddfolio_flutter/main/ui/hero/hero_content.dart';
import 'package:wrddfolio_flutter/main/ui/iphone/iphone_mockup.dart';
import 'package:wrddfolio_flutter/main/ui/projects/project.dart';
import 'package:wrddfolio_flutter/main/ui/skills/skills.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';
import 'package:wrddfolio_flutter/utils/widgets/header_image.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Project> projects = Project.projects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 1, 21),
      appBar: CustomAppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: SpaceBackground(child: const SizedBox.expand()),
          ),

          Positioned.fill(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: ResponsiveHelper.responsiveValue<double>(
                      context: context,
                      defaultValue: double.infinity,
                      tablet: double.infinity,
                      desktop: 1800,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderImage(),

                      // Hero Content
                      HeroContent(),

                      SizedBox(
                        height: ResponsiveHelper.responsiveValue(
                          context: context,
                          defaultValue: 60.0,
                          tablet: 80.0,
                          desktop: 100.0,
                        ),
                      ),

                      // Phone Mockup
                      IphoneMockUp(),

                      SizedBox(
                        height: ResponsiveHelper.responsiveValue(
                          context: context,
                          defaultValue: 50.0,
                          tablet: 60.0,
                          desktop: 70.0,
                        ),
                      ),

                      // Skills Section
                      Skills(),

                      SizedBox(
                        height: ResponsiveHelper.responsiveValue(
                          context: context,
                          defaultValue: 150.0,
                          tablet: 200.0,
                          desktop: 250.0,
                        ),
                      ),

                      // Projects Section
                      ProjectSection(projects: projects),

                      SizedBox(
                        height: ResponsiveHelper.responsiveValue(
                          context: context,
                          defaultValue: 120.0,
                          tablet: 160.0,
                          desktop: 200.0,
                        ),
                      ),

                      // CV Section
                      Cv(),

                      SizedBox(
                        height: ResponsiveHelper.responsiveValue(
                          context: context,
                          defaultValue: 70.0,
                          tablet: 85.0,
                          desktop: 100.0,
                        ),
                      ),

                      // Footer
                      FooterSection(),

                      // Copyright
                      Center(
                        child: Text(
                          '© WrddX 2025 Inc. All Rights Reserved',
                          style: GoogleFonts.montserrat(
                            fontSize: ResponsiveHelper.responsiveValue(
                              context: context,
                              defaultValue: 12.0,
                              tablet: 13.0,
                              desktop: 14.0,
                            ),
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 45),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
