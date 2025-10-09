import 'package:flutter/material.dart';
import 'package:gym_buddy/core/widgets/custom_button.dart';

class AnimatedScaleButton extends StatefulWidget {
  final double height;
  final double width;
  final VoidCallback onPressed;
  final String text;

  const AnimatedScaleButton({
    required this.height,
    required this.width,
    required this.onPressed,
    required this.text,
  });

  @override
  State<AnimatedScaleButton> createState() => _AnimatedScaleButtonState();
}

class _AnimatedScaleButtonState extends State<AnimatedScaleButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150), 
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
        child: CustomButton(
          height: widget.height,
          width: widget.width,
          onPressed: widget.onPressed,
          text: widget.text,
        ),
      ),
    );
  }
}
