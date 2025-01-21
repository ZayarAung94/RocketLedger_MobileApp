import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/screens/menu_screen/childs/payment/components/transaction.dart';

class NetTransaction extends StatelessWidget {
  const NetTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const PaymentTransaction();
      },
    );
  }
}
