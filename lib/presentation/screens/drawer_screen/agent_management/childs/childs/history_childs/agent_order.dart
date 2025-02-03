import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/widgets/order_list_view.dart';

class AgentOrderPage extends StatelessWidget {
  const AgentOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundAlt,
        title: const Text(
          'Agent Order',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: AppColors.accent,
          ),
        ),
      ),
      body: const Column(
        children: [
          Card(
            margin: EdgeInsets.all(5),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 150,
                width: double.infinity,
              ),
            ),
          ),
          Expanded(
            child: OrderListView(),
          ),
        ],
      ),
    );
  }
}
