import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool isPassword;
  final bool isPasswordVisible;
  final VoidCallback? onTogglePasswordVisibility;
  final bool hasClearButton;
  final TextInputAction? textInputAction;
  final bool showError;
  final VoidCallback? onClear;
  final FocusNode? focusNode;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final double? height;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? radius;

  const CustomTextField({
    required this.controller,
    super.key,
    this.labelText,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.isPassword = false,
    this.isPasswordVisible = false,
    this.onTogglePasswordVisibility,
    this.hasClearButton = false,
    this.textInputAction,
    this.showError = false,
    this.onClear,
    this.focusNode,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.height,
    this.prefixIcon,
    this.suffixIcon,
    this.radius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height ?? 48.h,
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            maxLength: maxLength,
            minLines: minLines,
            maxLines: maxLines ?? 1,
            keyboardType: keyboardType,
            obscureText: isPassword && !isPasswordVisible,
            onChanged: onChanged,
            textInputAction: textInputAction,
            style: theme.textTheme.bodyLarge,
            cursorColor: theme.colorScheme.primary,
            decoration: const InputDecoration()
                .applyDefaults(theme.inputDecorationTheme)
                .copyWith(
                  labelText: labelText,
                  hintText: hintText,
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon ?? _buildSuffixIcon(),
                ),
          ),
        ),
        if (validator != null && showError)
          Builder(
            builder: (context) {
              final errorText = validator!(controller.text);
              if (errorText != null) {
                return Padding(
                  padding: EdgeInsets.only(top: 4.h, left: 16.w),
                  child: Text(
                    errorText,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
      ],
    );
  }

  Widget? _buildSuffixIcon() {
    if (isPassword) {
      return IconButton(
        alignment: Alignment.center,
        icon: Icon(isPasswordVisible ? Icons.visibility_off : Icons.visibility),
        onPressed: onTogglePasswordVisibility,
      );
    }
    if (hasClearButton) {
      return IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          controller.clear();
          onClear?.call();
        },
      );
    }
    return null;
  }
}
