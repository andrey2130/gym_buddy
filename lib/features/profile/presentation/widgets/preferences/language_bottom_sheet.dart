import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _LanguageTile(language: 'English', locale: Locale('en', 'US')),
          _LanguageTile(language: 'Українська', locale: Locale('uk', 'UA')),
        ],
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  final String language;
  final Locale locale;

  const _LanguageTile({required this.language, required this.locale});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.check),
      title: Text(language),
      onTap: () {
        context.setLocale(locale);
        context.pop();
      },
    );
  }
}
