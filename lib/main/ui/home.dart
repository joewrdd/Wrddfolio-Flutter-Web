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
import 'package:wrddfolio_flutter/utils/constants/images.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Project> projects = Project.projects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: Stack(
        fit: StackFit.expand,
        children: [
          SpaceBackground(child: const SizedBox.expand()),

          Positioned.fill(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -215,
                          right: 240,
                          child: Center(
                            child: Transform.rotate(
                              angle: -0.1,
                              alignment: Alignment.center,
                              child: Transform.flip(
                                flipY: true,
                                child: SizedBox(
                                  height: 450,
                                  width: 990,
                                  child: Opacity(
                                    opacity: 0.9,
                                    child: Image.asset(
                                      ConstantImages.navBarVideo2,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Hero Content
                  HeroContent(),

                  const SizedBox(height: 100),

                  // Phone Mockup
                  IphoneMockUp(),

                  const SizedBox(height: 70),

                  // Skills Section
                  Skills(),

                  const SizedBox(height: 250),

                  // Projects Section
                  ProjectSection(projects: projects),

                  const SizedBox(height: 200),

                  // CV Section
                  Cv(),

                  const SizedBox(height: 100),

                  // Footer
                  FooterSection(),

                  // Copyright
                  Center(
                    child: Text(
                      '© WrddX 2025 Inc. All Rights Reserved',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
