import 'package:flutter/material.dart';

import '../../../../../components/payment_card.dart';

class OutcomeTransactions extends StatelessWidget {
  const OutcomeTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const PaymentCard();
      },
    );
  }
}
