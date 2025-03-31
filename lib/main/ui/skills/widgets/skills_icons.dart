import 'package:flutter/material.dart';
import 'package:wrddfolio_flutter/common/widgets/containers/app_container.dart';
import 'package:wrddfolio_flutter/main/models/tool_info.dart';
import 'package:wrddfolio_flutter/utils/func/responsive_helper.dart';

class SkillsIcons extends StatelessWidget {
  const SkillsIcons({super.key, required this.tools});

  final List<ToolInfo> tools;

  @override
  Widget build(BuildContext context) {
    final baseSize = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 40.0,
      tablet: 45.0,
      desktop: 50.0,
      largeDesktop: 55.0,
    );

    final spacing = ResponsiveHelper.responsiveValue<double>(
      context: context,
      defaultValue: 4.0,
      tablet: 5.0,
      desktop: 6.0,
      largeDesktop: 8.0,
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveHelper.responsiveValue(
          context: context,
          defaultValue: 8.0,
          tablet: 16.0,
          desktop: 24.0,
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: spacing,
        runSpacing: spacing,
        children:
            tools.map((tool) {
              final size = baseSize * tool.scale;
              return AppContainer(
                image: Image.asset(tool.imagePath),
                backgroundColor: Colors.transparent,
                imageSize: size,
                size: size,
              );
            }).toList(),
      ),
    );
  }
}
