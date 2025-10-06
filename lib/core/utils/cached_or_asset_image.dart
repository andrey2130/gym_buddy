import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedOrAssetImage extends StatelessWidget {
  final String? imageUrl;
  final String assetPath;
  final BoxFit fit;

  const CachedOrAssetImage({
    required this.imageUrl,
    required this.assetPath,
    super.key,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: imageUrl!,
        fit: fit,
        placeholder: (context, url) => Image.asset(assetPath, fit: fit),
        errorWidget: (context, url, error) => Image.asset(assetPath, fit: fit),
      );
    }

    return Image.asset(assetPath, fit: fit);
  }
}
