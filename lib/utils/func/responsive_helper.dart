import 'package:flutter/material.dart';
import '../constants/sizes.dart';

class ResponsiveHelper {
  // Screen breakpoints from your constants
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= ConstantSizes.desktopScreenSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= ConstantSizes.tabletScreenSize &&
      MediaQuery.of(context).size.width < ConstantSizes.desktopScreenSize;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < ConstantSizes.tabletScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > ConstantSizes.customScreenSize;

  // Get responsive value based on screen size
  static T responsiveValue<T>({
    required BuildContext context,
    required T defaultValue,
    T? tablet,
    T? desktop,
    T? largeDesktop,
  }) {
    if (largeDesktop != null && isLargeScreen(context)) {
      return largeDesktop;
    }
    if (desktop != null && isDesktop(context)) {
      return desktop;
    }
    if (tablet != null && isTablet(context)) {
      return tablet;
    }
    return defaultValue;
  }

  // Proportional sizing helpers
  static double wp(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.width * (percentage / 100);

  static double hp(BuildContext context, double percentage) =>
      MediaQuery.of(context).size.height * (percentage / 100);

  // Responsive padding that adjusts based on screen size
  static EdgeInsets responsivePadding(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: responsiveValue<double>(
        context: context,
        defaultValue: 16.0, // Mobile
        tablet: 32.0,
        desktop: 48.0,
        largeDesktop: 64.0,
      ),
      vertical: 16.0,
    );
  }

  // Get responsive font size
  static double fontSize(BuildContext context, double size) {
    // Scale font sizes based on device pixel ratio to handle different screen densities
    final scaleFactor = MediaQuery.of(context).textScaleFactor;

    // Adjust for screen width
    double screenAdjustment = 1.0;
    if (isDesktop(context)) {
      screenAdjustment = 1.2;
    } else if (isTablet(context)) {
      screenAdjustment = 1.1;
    }

    return size * scaleFactor * screenAdjustment;
  }
}
