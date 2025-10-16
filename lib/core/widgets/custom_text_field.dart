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
  final FocusNode? focusNode;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final double? height;
  final Widget? prefixIcon;
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
    this.focusNode,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.height,
    this.prefixIcon,
    this.radius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: height ?? 56.h),
      child: TextFormField(
        autocorrect: false,
        controller: controller,
        focusNode: focusNode,
        maxLength: maxLength,
        minLines: minLines,
        maxLines: maxLines ?? 1,
        keyboardType: keyboardType,
        obscureText: isPassword && !isPasswordVisible,
        onChanged: onChanged,
        textInputAction: textInputAction,
        validator: validator, // <- тут ключовий момент
        style: theme.textTheme.bodyLarge,
        cursorColor: theme.colorScheme.primary,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: _buildSuffixIcon(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius!),
          ),
        ),
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    if (isPassword) {
      return IconButton(
        icon: Icon(isPasswordVisible ? Icons.visibility_off : Icons.visibility),
        onPressed: onTogglePasswordVisibility,
      );
    }
    if (hasClearButton) {
      return IconButton(
        icon: const Icon(Icons.close),
        onPressed: controller.clear,
      );
    }
    return null;
  }
}
