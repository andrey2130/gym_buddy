import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorsOverlay extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const ErrorsOverlay({
    required this.message,
    required this.onRetry,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: Text(message),
            actions: [
              TextButton(onPressed: onRetry, child: const Text('Retry')),
            ],
          )
        : AlertDialog(
            title: Text(message),
            actions: [
              TextButton(onPressed: onRetry, child: const Text('Retry')),
            ],
          );
  }
}
