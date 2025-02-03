import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

import 'components/game_payment.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text("Payment Transactions"),
      ),
      body: const GamePayment(),
    );
  }
}
