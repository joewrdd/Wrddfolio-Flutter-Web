import 'package:flutter/material.dart';
import 'package:wrddfolio_flutter/utils/constants/colors.dart';

class AnimatedButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final IconData? icon;

  const AnimatedButton({
    super.key,
    required this.onTap,
    required this.width,
    required this.text,
    this.icon,
  });

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    // Start the animation when widget is built
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          constraints: BoxConstraints(maxWidth: widget.width),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 4,
              focalRadius: 300,
              colors: [
                ConstantColors.primaryDark.withOpacity(_isHovered ? 0.6 : 0.4),
                ConstantColors.neonPurple.withOpacity(_isHovered ? 0.7 : 0.5),
              ],
            ),
            borderRadius: BorderRadius.circular(8),
            boxShadow:
                _isHovered
                    ? [
                      BoxShadow(
                        color: const Color(0xFF7042F8).withOpacity(0.3),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ]
                    : [],
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 2.4),
                Icon(widget.icon, color: Colors.white, size: 17),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
