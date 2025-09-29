// Кастомний віджет для анімованих текстових полів
import 'package:flutter/material.dart';
import 'package:gym_buddy/core/utils/custom_text_field.dart';

class AnimatedTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final double radius;
  final double height;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isPassword;

  const AnimatedTextField({
    required this.controller,
    required this.labelText,
    required this.radius,
    required this.height,
    this.validator,
    this.keyboardType,
    this.isPassword = false,
  });

  @override
  State<AnimatedTextField> createState() => _AnimatedTextFieldState();
}

class _AnimatedTextFieldState extends State<AnimatedTextField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150), // 150ms для мікроанімації
    );
    _scaleAnimation = Tween<double>(
      begin: 0.98,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.reverse(),
      onTapUp: (_) => _controller.forward(),
      onTapCancel: () => _controller.forward(),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: CustomTextField(
          controller: widget.controller,
          labelText: widget.labelText,
          radius: widget.radius,
          height: widget.height,
          validator: widget.validator,

          isPassword: widget.isPassword,
        ),
      ),
    );
  }
}
