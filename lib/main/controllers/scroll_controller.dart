import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomScrollController extends GetxController {
  static CustomScrollController get instance => Get.find();

  final ScrollController scrollController = ScrollController();
  final RxDouble opacity = 0.0.obs;
  final maxScrollForOpacity = 100.0;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void _onScroll() {
    final scrollPosition = scrollController.offset;
    opacity.value = (scrollPosition / maxScrollForOpacity).clamp(0.0, 1.0);
  }
}
