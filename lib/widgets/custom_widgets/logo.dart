import 'package:flutter/material.dart';
import 'package:zeyad_ali_portfolio/utils/app_theme.dart';

class Logo extends StatefulWidget {
  const Logo({super.key, required this.imagePath, this.color});

  final String imagePath;
  final Color? color;

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Image.asset(
        widget.imagePath,
        height: 50,
        color: widget.color ?? AppTheme.logoColor,
        colorBlendMode: BlendMode.srcIn,
      ),
    );
  }
}
