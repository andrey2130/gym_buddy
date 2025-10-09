import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  final String? backgroundUrl;

  const ProfileAppBar({super.key, this.backgroundUrl});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150,
      pinned: true,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: backgroundUrl ?? '',
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Image.asset('assets/images/everest.jpg', fit: BoxFit.cover),
              errorWidget: (context, url, error) =>
                  Image.asset('assets/images/everest.jpg', fit: BoxFit.cover),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.7),
                  ],
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'profile'.tr(),
          style: Theme.of(
            context,
          ).textTheme.displayLarge?.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
    );
  }
}
