import 'package:flutter/material.dart';

class SocialMediaButtonWidget extends StatelessWidget {
  const SocialMediaButtonWidget({
    required this.assetPath,
    required this.color,
    super.key,
  });

  final String assetPath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Image.asset(
        assetPath,
        color: color,
      ),
    );
  }
}
