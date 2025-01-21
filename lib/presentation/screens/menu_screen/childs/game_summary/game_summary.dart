import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

class GameSummary extends StatelessWidget {
  const GameSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text("Game Summary"),
      ),
      body: const Center(
        child: Text("Game Summary"),
      ),
    );
  }
}
