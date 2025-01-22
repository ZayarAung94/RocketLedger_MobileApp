import 'package:flutter/material.dart';

import 'components/payment_widget.dart';

class AgentPaymentDone extends StatelessWidget {
  const AgentPaymentDone({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const PaymentWidget();
      },
    );
  }
}
