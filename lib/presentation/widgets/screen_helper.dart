import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class ScreenHelper extends StatelessWidget {
  final String title;
  final Widget body;
  const ScreenHelper({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: AppColors.accent,
          ),
        ),
      ),
      body: body,
    );
  }
}
