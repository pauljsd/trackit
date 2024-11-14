import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trackit/commons/widgets/shimmers/shimmers.dart';
import 'package:trackit/utils/constants/colors.dart';
import 'package:trackit/utils/constants/sizes.dart';
import 'package:trackit/helper/helper_functions.dart';

class PCircularImage extends StatelessWidget {
  const PCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = PSizes.sm,
    this.isNetworkImage = true,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor ??
              (PHelperFunctions.isDarkMode(context)
                  ? PColors.black
                  : PColors.white),
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Center(
              child:
                  // isNetworkImage
                  // ? CachedNetworkImage(
                  //     fit: fit,
                  //     color: overlayColor,
                  //     imageUrl: image,
                  //     progressIndicatorBuilder:
                  //         (context, url, downloadProgress) =>
                  //             const PShimmerEffect(width: 55, height: 55),
                  //     errorWidget: (context, url, downloadProgress) =>
                  //         const Icon(Icons.error))
                  // :
                  Image(
            fit: fit,
            image: AssetImage(image),
            color: overlayColor,
          )),
        ));
  }
}
