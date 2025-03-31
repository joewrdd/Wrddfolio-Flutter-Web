import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/circular_container.dart';
import 'package:wrddfolio_flutter/common/widgets/images/circular_image.dart';
import 'package:wrddfolio_flutter/main/controllers/appbar_controller.dart';
import 'package:wrddfolio_flutter/routes/routes.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';
import 'package:wrddfolio_flutter/utils/constants/images.dart';
import 'package:wrddfolio_flutter/utils/enums/image_type.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appbarController = Get.put(AppbarController());

    // Calculate responsive height for appbar
    final appBarHeight = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 90.0,
      tablet: 90.0,
      desktop: 90.0,
      largeDesktop: 100.0,
    );

    return AppBar(
      toolbarHeight: appBarHeight,
      backgroundColor: const Color.fromARGB(255, 8, 1, 21),
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Stack(
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: double.infinity,
                height: appBarHeight,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ConstantColors.secondaryDark.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 4,
                    offset: Offset(1, 8),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      titleSpacing: 0,
      leading: Container(
        height: 200,
        width: ResponsiveHelper.responsiveValue(
          context: context,
          defaultValue: 100.0,
          tablet: 120.0,
          desktop: 150.0,
        ),
        padding: EdgeInsets.only(
          left: ResponsiveHelper.responsiveValue(
            context: context,
            defaultValue: 16.0,
            tablet: 20.0,
            desktop: 24.0,
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              CircularImage(
                image: ConstantImages.mainLogo,
                width: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 70.0,
                  tablet: 80.0,
                  desktop: 80.0,
                  largeDesktop: 90.0,
                ),
                height: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 70.0,
                  tablet: 80.0,
                  desktop: 80.0,
                  largeDesktop: 90.0,
                ),
                imageType: ImageType.asset,
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
      leadingWidth: ResponsiveHelper.responsiveValue(
        context: context,
        defaultValue: 100.0,
        tablet: 120.0,
        desktop: 150.0,
      ),
      title: Visibility(
        visible: !ResponsiveHelper.isMobile(context),
        child: CircularContainer(
          height: 50,
          width: ResponsiveHelper.responsiveValue(
            context: context,
            defaultValue: 400.0,
            tablet: 450.0,
            desktop: 550.0,
            largeDesktop: 650.0,
          ),
          showBorder: true,
          borderColor: ConstantColors.primaryDark.withOpacity(0.2),
          backgroundColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed:
                      () => appbarController.appItemOnTap(MyRoutes.aboutMe),
                  child: Text(
                    'ABOUT ME',
                    style: TextStyle(
                      color: ConstantColors.white,
                      fontSize: ResponsiveHelper.responsiveValue(
                        context: context,
                        defaultValue: 12.0,
                        tablet: 12.0,
                        desktop: 12.0,
                        largeDesktop: 14.0,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed:
                      () => appbarController.appItemOnTap(MyRoutes.skills),
                  child: Text(
                    'SKILLS',
                    style: TextStyle(
                      color: ConstantColors.white,
                      fontSize: ResponsiveHelper.responsiveValue(
                        context: context,
                        defaultValue: 12.0,
                        tablet: 12.0,
                        desktop: 12.0,
                        largeDesktop: 14.0,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed:
                      () => appbarController.appItemOnTap(MyRoutes.projects),
                  child: Text(
                    'PROJECTS',
                    style: TextStyle(
                      color: ConstantColors.white,
                      fontSize: ResponsiveHelper.responsiveValue(
                        context: context,
                        defaultValue: 12.0,
                        tablet: 12.0,
                        desktop: 12.0,
                        largeDesktop: 14.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: ResponsiveHelper.responsiveValue(
              context: context,
              defaultValue: 15.0,
              tablet: 20.0,
              desktop: 25.0,
              largeDesktop: 30.0,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                ConstantImages.xLogo,
                width: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 24.0,
                  tablet: 28.0,
                  desktop: 30.0,
                  largeDesktop: 32.0,
                ),
                height: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 24.0,
                  tablet: 28.0,
                  desktop: 30.0,
                  largeDesktop: 32.0,
                ),
              ),
              SizedBox(width: 12),
              Image.asset(
                ConstantImages.gitHubWhiteLogo,
                width: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 24.0,
                  tablet: 28.0,
                  desktop: 30.0,
                  largeDesktop: 32.0,
                ),
                height: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 24.0,
                  tablet: 28.0,
                  desktop: 30.0,
                  largeDesktop: 32.0,
                ),
              ),
              SizedBox(width: 12),
              Image.asset(
                ConstantImages.toolVercel,
                width: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 24.0,
                  tablet: 28.0,
                  desktop: 30.0,
                  largeDesktop: 32.0,
                ),
                height: ResponsiveHelper.responsiveValue(
                  context: context,
                  defaultValue: 24.0,
                  tablet: 28.0,
                  desktop: 30.0,
                  largeDesktop: 32.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    ResponsiveHelper.responsiveValue<double>(
      context: Get.context!,
      defaultValue: 90.0,
      tablet: 90.0,
      desktop: 90.0,
      largeDesktop: 100.0,
    ),
  );
}
