import 'package:get/get.dart';
import 'package:wrddfolio_flutter/main/ui/hero/hero_content.dart';
import 'package:wrddfolio_flutter/main/ui/iphone/iphone_mockup.dart';
import 'package:wrddfolio_flutter/main/ui/projects/project.dart';
import 'package:wrddfolio_flutter/main/ui/skills/skills.dart';
import 'package:wrddfolio_flutter/routes/routes.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: MyRoutes.home, page: () => const HeroContent()),
    GetPage(name: MyRoutes.aboutMe, page: () => const IphoneMockUp()),
    GetPage(
      name: MyRoutes.projects,
      page: () => const ProjectSection(projects: []),
    ),
    GetPage(name: MyRoutes.skills, page: () => const Skills()),
  ];
}
