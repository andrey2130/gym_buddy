import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String? avatarUrl;
  final String? pendingEmail;
  final VoidCallback onTap;

  const ProfileHeader({
    required this.userName,
    required this.userEmail,
    required this.onTap,

    super.key,
    this.avatarUrl,
    this.pendingEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: onTap,
                child: avatarUrl != null && avatarUrl!.isNotEmpty
                    ? Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: avatarUrl!,
                            fit: BoxFit.cover,
                            placeholder: (context, url) =>
                                _buildPlaceholder(context),
                            errorWidget: (context, url, error) =>
                                _buildPlaceholder(context),
                          ),
                        ),
                      )
                    : _buildPlaceholder(context),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 2,
                    ),
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(userName, style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(height: 4),
          Text(userEmail, style: Theme.of(context).textTheme.bodyMedium),
          if (pendingEmail != null) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange, width: 1),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.pending, size: 16, color: Colors.orange),
                  const SizedBox(width: 6),
                  Flexible(
                    child: Text(
                      'pending_email_verification'.tr(),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.orange),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      child: Text(
        _getInitials(userName),
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
  }
}
