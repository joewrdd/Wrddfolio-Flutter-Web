import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/app_container.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/common/widgets/images/circular_image.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';

class IphoneMockUp extends StatelessWidget {
  const IphoneMockUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 175),
        child: SizedBox(
          height: 1000,
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Opacity(
                      opacity: 0.2,
                      child: CircularImage(
                        image: ConstantImages.encryptionVideo,
                        backgroundColor: Colors.transparent,
                        width: 1100,
                        height: 800,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 525,
                    child: CircularContainer(
                      backgroundColor: Colors.transparent,
                      width: 400,
                      height: 800,
                      child: Image.asset(
                        ConstantImages.iphoneMockup,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 580),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse('https://github.com/joewrdd'),
                                  ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                31,
                                29,
                                29,
                              ),
                              image: Image.asset(
                                ConstantImages.gitHubBlackLogo,
                                color: Colors.white,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 45,
                              size: 55,
                              text: 'GitHub',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse(
                                      'https://www.instagram.com/joewrdd',
                                    ),
                                  ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                31,
                                29,
                                29,
                              ),
                              image: Image.asset(
                                ConstantImages.coloredInstagramLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 60,
                              size: 55,
                              text: 'Instagram',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse('https://x.com/joewrdd'),
                                  ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                19,
                                17,
                                17,
                              ),
                              image: Image.asset(
                                ConstantImages.xLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 45,
                              size: 55,
                              text: 'X',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse('https://wa.me/+96176000623'),
                                  ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                25,
                                23,
                                23,
                              ),
                              image: Image.asset(
                                ConstantImages.whatsAppLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 40,
                              size: 55,
                              text: 'WhatsApp',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 580),
                            child: AppContainer(
                              onTap: () {},
                              backgroundColor: Colors.white,
                              image: Image.asset(
                                ConstantImages.projectLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 57,
                              size: 55,
                              text: 'Projects',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse(
                                      'https://www.linkedin.com/in/joe-ward-504718357/',
                                    ),
                                  ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                25,
                                23,
                                23,
                              ),
                              image: Image.asset(
                                ConstantImages.linkedinLogoColored,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 45,
                              size: 55,
                              text: 'LinkedIn',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: AppContainer(
                              backgroundColor: Colors.white,
                              image: Image.asset(
                                ConstantImages.skillsLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 50,
                              size: 55,
                              text: 'Skills',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse(
                                      'https://www.youtube.com/@wrd70z',
                                    ),
                                  ),
                              backgroundColor: Colors.white,
                              image: Image.asset(
                                ConstantImages.youtubeLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 70,
                              size: 55,
                              text: 'Youtube',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 580),
                            child: AppContainer(
                              backgroundColor: Colors.white,
                              image: Image.asset(
                                ConstantImages.aboutMeLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 45,
                              size: 55,
                              text: 'About Me',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: AppContainer(
                              backgroundColor: Colors.white,
                              image: Image.asset(
                                ConstantImages.tetrisLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 45,
                              size: 55,
                              text: 'Tetris',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse(
                                      'https://github.com/joewrdd/AIWrdd-MERN',
                                    ),
                                  ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                25,
                                23,
                                23,
                              ),
                              image: Image.asset(
                                ConstantImages.mainLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 40,
                              size: 55,
                              text: 'WrddAI',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 23),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: AppContainer(
                              onTap:
                                  () => launchUrl(
                                    Uri.parse(
                                      'https://mail.google.com/mail/u/0/#inbox',
                                    ),
                                  ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                25,
                                23,
                                23,
                              ),
                              image: Image.asset(
                                ConstantImages.gmailLogo,
                                fit: BoxFit.cover,
                              ),
                              imageSize: 40,
                              size: 55,
                              text: 'Gmail',
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: const Text(
                  '私はジョー・ワード、フルスタックフラッター開発者です',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
