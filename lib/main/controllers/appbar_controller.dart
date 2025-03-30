import 'package:get/get.dart';
import 'package:wrddfolio_flutter/routes/routes.dart';

class AppbarController extends GetxController {
  static AppbarController get instance => Get.find();

  final selectedIndex = MyRoutes.home.obs;

  void changeIndex(String index) {
    selectedIndex.value = index;
  }

  bool isSelected(String route) => selectedIndex.value == route;

  void appItemOnTap(String route) {
    if (!isSelected(route)) {
      changeIndex(route);
    }

    Get.toNamed(route);
  }
}
