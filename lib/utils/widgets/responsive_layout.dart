import 'package:flutter/material.dart';
import '../func/responsive_helper.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? largeDesktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.largeDesktop,
  });

  @override
  Widget build(BuildContext context) {
    // Use LayoutBuilder to get constraints
    return LayoutBuilder(
      builder: (context, constraints) {
        if (ResponsiveHelper.isLargeScreen(context) && largeDesktop != null) {
          return largeDesktop!;
        }

        if (ResponsiveHelper.isDesktop(context) && desktop != null) {
          return desktop!;
        }

        if (ResponsiveHelper.isTablet(context) && tablet != null) {
          return tablet!;
        }

        return mobile;
      },
    );
  }
}

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    bool isMobile,
    bool isTablet,
    bool isDesktop,
  )
  builder;

  const ResponsiveBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    return builder(context, isMobile, isTablet, isDesktop);
  }
}

class ResponsiveConstrainedBox extends StatelessWidget {
  final Widget child;
  final double? maxWidth;
  final double? mobileMaxWidth;
  final double? tabletMaxWidth;
  final double? desktopMaxWidth;
  final EdgeInsetsGeometry padding;

  const ResponsiveConstrainedBox({
    super.key,
    required this.child,
    this.maxWidth,
    this.mobileMaxWidth,
    this.tabletMaxWidth,
    this.desktopMaxWidth,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: ResponsiveHelper.responsiveValue<double>(
              context: context,
              defaultValue: mobileMaxWidth ?? maxWidth ?? double.infinity,
              tablet: tabletMaxWidth ?? maxWidth,
              desktop: desktopMaxWidth ?? maxWidth,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
