import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/components/payment_card.dart';

class IncomeTransactions extends StatelessWidget {
  const IncomeTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const PaymentCard();
      },
    );
  }
}
