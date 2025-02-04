import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/game_summary/components/game_summary_widget.dart';

class GameSummary extends StatelessWidget {
  const GameSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text("Game Summary"),
      ),
      body: const GameSummaryWidget(),
    );
  }
}
