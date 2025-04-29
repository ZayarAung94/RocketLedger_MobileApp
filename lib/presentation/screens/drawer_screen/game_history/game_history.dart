import 'package:flutter/material.dart';
import 'package:rocketledger/core/helpers/text_style.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../components/game_card.dart';

class GameHistory extends StatelessWidget {
  const GameHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: Text(
          "Game History",
          style: AppTextStyle.appBar(),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const GameCard();
        },
      ),
    );
  }
}
