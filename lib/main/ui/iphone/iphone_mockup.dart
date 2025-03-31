import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/common/widgets/images/circular_image.dart';
import 'package:wrddfolio_flutter/main/models/app_icon.dart';
import 'package:wrddfolio_flutter/main/ui/iphone/widgets/single_app_icon.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';
import 'package:wrddfolio_flutter/utils/widgets/responsive_layout.dart';

class IphoneMockUp extends StatelessWidget {
  const IphoneMockUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, isMobile, isTablet, isDesktop) {
        final containerPadding =
            ResponsiveHelper.responsiveValue<EdgeInsetsGeometry>(
              context: context,
              defaultValue: EdgeInsets.zero,
              tablet: const EdgeInsets.only(right: 60),
              desktop: const EdgeInsets.only(right: 175),
            );

        final containerHeight = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 600.0,
          tablet: 800.0,
          desktop: 1000.0,
        );

        final backgroundImageWidth = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 500.0,
          tablet: 800.0,
          desktop: 1100.0,
        );

        final backgroundImageHeight = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 400.0,
          tablet: 600.0,
          desktop: 800.0,
        );

        final backgroundPadding =
            ResponsiveHelper.responsiveValue<EdgeInsetsGeometry>(
              context: context,
              defaultValue: const EdgeInsets.only(left: 50),
              tablet: const EdgeInsets.only(left: 120),
              desktop: const EdgeInsets.only(left: 200),
            );

        final iphoneWidth = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 250.0,
          tablet: 320.0,
          desktop: 400.0,
        );

        final iphoneHeight = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 500.0,
          tablet: 650.0,
          desktop: 800.0,
        );

        final appIconSize = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 30.0,
          tablet: 40.0,
          desktop: 50.0,
        );

        final appContainerSize = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 36.0,
          tablet: 46.0,
          desktop: 56.0,
        );

        final phoneLeftPosition = ResponsiveHelper.responsiveValue<double>(
          context: context,
          defaultValue: 150.0,
          tablet: 325.0,
          desktop: 525.0,
        );

        if (isMobile) {
          return Center(
            child: Column(
              children: [
                Opacity(
                  opacity: 0.2,
                  child: CircularImage(
                    image: ConstantImages.encryptionVideo,
                    backgroundColor: Colors.transparent,
                    width: backgroundImageWidth * 0.8,
                    height: backgroundImageHeight * 0.7,
                  ),
                ),

                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: iphoneWidth * 0.9,
                        height: iphoneHeight * 0.8,
                        child: Image.asset(
                          ConstantImages.iphoneMockup,
                          fit: BoxFit.contain,
                        ),
                      ),

                      Positioned(
                        top: iphoneHeight * 0.15,
                        child: Container(
                          width: iphoneWidth * 0.7,
                          height: iphoneHeight * 0.7,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: _buildAppRow(
                                  startIndex: 0,
                                  count: 4,
                                  iconSize: appIconSize * 0.9,
                                  containerSize: appContainerSize * 0.9,
                                  showLabels: true,
                                ),
                              ),

                              SizedBox(height: 30),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: _buildAppRow(
                                  startIndex: 4,
                                  count: 4,
                                  iconSize: appIconSize * 0.9,
                                  containerSize: appContainerSize * 0.9,
                                  showLabels: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        return Center(
          child: Padding(
            padding: containerPadding as EdgeInsets,
            child: SizedBox(
              height: containerHeight,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: backgroundPadding as EdgeInsets,
                    child: Opacity(
                      opacity: 0.2,
                      child: CircularImage(
                        image: ConstantImages.encryptionVideo,
                        backgroundColor: Colors.transparent,
                        width: backgroundImageWidth,
                        height: backgroundImageHeight,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    left: phoneLeftPosition,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularContainer(
                          backgroundColor: Colors.transparent,
                          width: iphoneWidth,
                          height: iphoneHeight,
                          child: Image.asset(
                            ConstantImages.iphoneMockup,
                            fit: BoxFit.contain,
                          ),
                        ),

                        Positioned(
                          top: iphoneHeight * 0.18,
                          child: Container(
                            width: iphoneWidth * 0.75,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: _buildAppRow(
                                    startIndex: 0,
                                    count: 4,
                                    iconSize: appIconSize,
                                    containerSize: appContainerSize,
                                    showLabels: true,
                                  ),
                                ),

                                SizedBox(height: iphoneHeight * 0.06),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: _buildAppRow(
                                    startIndex: 4,
                                    count: 4,
                                    iconSize: appIconSize,
                                    containerSize: appContainerSize,
                                    showLabels: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  //-------------------------------- HELPER FUNCTIONS --------------------------------
  List<Widget> _buildAppRow({
    required int startIndex,
    required int count,
    required double iconSize,
    required double containerSize,
    required bool showLabels,
  }) {
    final appIcons = _getAppIcons();
    List<Widget> rowItems = [];

    for (
      int i = startIndex;
      i < startIndex + count && i < appIcons.length;
      i++
    ) {
      rowItems.add(
        SingleAppIcon(
          image: appIcons[i].image,
          label: showLabels ? appIcons[i].label : "",
          iconSize: iconSize,
          containerSize: containerSize,
          backgroundColor: appIcons[i].backgroundColor,
          imageColor: appIcons[i].imageColor,
          onTap: appIcons[i].onTap,
        ),
      );
    }

    return rowItems;
  }

  List<AppIconInfo> _getAppIcons() {
    return [
      AppIconInfo(
        image: ConstantImages.gitHubBlackLogo,
        label: 'GitHub',
        backgroundColor: const Color.fromARGB(255, 31, 29, 29),
        imageColor: Colors.white,
        onTap: () => launchUrl(Uri.parse('https://github.com/joewrdd')),
      ),
      AppIconInfo(
        image: ConstantImages.coloredInstagramLogo,
        label: 'Instagram',
        backgroundColor: const Color.fromARGB(255, 31, 29, 29),
        onTap: () => launchUrl(Uri.parse('https://www.instagram.com/joewrdd')),
      ),
      AppIconInfo(
        image: ConstantImages.xLogo,
        label: 'X',
        backgroundColor: const Color.fromARGB(255, 19, 17, 17),
        onTap: () => launchUrl(Uri.parse('https://x.com/joewrdd')),
      ),
      AppIconInfo(
        image: ConstantImages.whatsAppLogo,
        label: 'WhatsApp',
        backgroundColor: const Color.fromARGB(255, 25, 23, 23),
        onTap: () => launchUrl(Uri.parse('https://wa.me/+96176000623')),
      ),
      AppIconInfo(
        image: ConstantImages.projectLogo,
        label: 'Projects',
        backgroundColor: Colors.white,
      ),
      AppIconInfo(
        image: ConstantImages.linkedinLogoColored,
        label: 'LinkedIn',
        backgroundColor: const Color.fromARGB(255, 25, 23, 23),
        onTap:
            () => launchUrl(
              Uri.parse('https://www.linkedin.com/in/joe-ward-504718357/'),
            ),
      ),
      AppIconInfo(
        image: ConstantImages.skillsLogo,
        label: 'Skills',
        backgroundColor: Colors.white,
      ),
      AppIconInfo(
        image: ConstantImages.youtubeLogo,
        label: 'YouTube',
        backgroundColor: const Color.fromARGB(255, 19, 17, 17),
        onTap: () => launchUrl(Uri.parse('https://www.youtube.com/@wrd70z')),
      ),
    ];
  }
}
