import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wrddfolio_flutter/main/controllers/appbar_controller.dart';
import 'package:wrddfolio_flutter/routes/routes.dart';

class RouteObservers extends GetObserver {
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final appbarController = Get.put(AppbarController());

    if (previousRoute != null) {
      for (var page in MyRoutes.routes) {
        if (previousRoute.settings.name == page) {
          appbarController.changeIndex(page);
        }
      }
    }
  }

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final appbarController = Get.put(AppbarController());

    if (route != null) {
      for (var page in MyRoutes.routes) {
        if (route.settings.name == page) {
          appbarController.changeIndex(page);
        }
      }
    }
  }
}
