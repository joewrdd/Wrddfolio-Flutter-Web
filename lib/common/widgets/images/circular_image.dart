import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:wrddfolio_flutter/utils/enums/image_type.dart';
import '../../../utils/constants/sizes.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.memoryImage,
    this.backgroundColor,
    this.image,
    this.imageType = ImageType.asset,
    this.fit = BoxFit.cover,
    this.padding = ConstantSizes.sm,
    this.file,
  });

  final BoxFit? fit;
  final String? image;
  final File? file;
  final ImageType imageType;
  final Color? overlayColor;
  final Color? backgroundColor;
  final Uint8List? memoryImage;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.white),
        borderRadius: BorderRadius.circular(width >= height ? width : height),
      ),
      child: _buildImageWidget(),
    );
  }

  Widget _buildImageWidget() {
    Widget imageWidget;

    switch (imageType) {
      case ImageType.memory:
        imageWidget = _buildMemoryImage();
        break;
      case ImageType.file:
        imageWidget = _buildFileImage();
        break;
      case ImageType.asset:
        imageWidget = _buildAssetImage();
        break;
      case ImageType.network:
        throw UnimplementedError('Network Images Are Not Supported Yet');
    }

    // Apply ClipRRect directly to the image widget
    return ClipRRect(
      borderRadius: BorderRadius.circular(width >= height ? width : height),
      child: imageWidget,
    );
  }

  // Function to build the memory image widget
  Widget _buildMemoryImage() {
    if (memoryImage != null) {
      // Display image from memory using Image widget
      return Image(
        fit: fit,
        image: MemoryImage(memoryImage!),
        color: overlayColor,
      );
    } else {
      // Return an empty container if no image is provided
      return Container();
    }
  }

  // Function to build the asset image widget
  Widget _buildFileImage() {
    if (file != null) {
      // Display image from assets using Image widget
      return Image(fit: fit, image: FileImage(file!), color: overlayColor);
    } else {
      // Return an empty container if no image is provided
      return Container();
    }
  }

  // Function to build the asset image widget
  Widget _buildAssetImage() {
    if (image != null) {
      // Display image from assets using Image widget
      return Image(fit: fit, image: AssetImage(image!), color: overlayColor);
    } else {
      // Return an empty container if no image is provided
      return Container();
    }
  }
}
