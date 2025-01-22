import 'package:flutter/material.dart';

import 'components/payment_widget.dart';

class AgentPaymentPending extends StatelessWidget {
  const AgentPaymentPending({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return const PaymentWidget();
      },
    );
  }
}
