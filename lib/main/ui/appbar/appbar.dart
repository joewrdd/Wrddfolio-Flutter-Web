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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appbarController = Get.put(AppbarController());
    return AppBar(
      toolbarHeight: 90,
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
                height: 90,
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
        width: 150,
        padding: const EdgeInsets.only(left: 16),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              CircularImage(
                image: ConstantImages.mainLogo,
                width: 80,
                height: 80,
                imageType: ImageType.asset,
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
      leadingWidth: 100,
      title: CircularContainer(
        height: 50,
        width: 550,
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
                  style: TextStyle(color: ConstantColors.white, fontSize: 12),
                ),
              ),
              TextButton(
                onPressed: () => appbarController.appItemOnTap(MyRoutes.skills),
                child: Text(
                  'SKILLS',
                  style: TextStyle(color: ConstantColors.white, fontSize: 12),
                ),
              ),
              TextButton(
                onPressed:
                    () => appbarController.appItemOnTap(MyRoutes.projects),
                child: Text(
                  'PROJECTS',
                  style: TextStyle(color: ConstantColors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Row(
            children: [
              Image.asset(ConstantImages.xLogo, width: 30, height: 30),
              SizedBox(width: 12),
              Image.asset(
                ConstantImages.gitHubWhiteLogo,
                width: 30,
                height: 30,
              ),
              SizedBox(width: 12),
              Image.asset(ConstantImages.toolVercel, width: 30, height: 30),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}
