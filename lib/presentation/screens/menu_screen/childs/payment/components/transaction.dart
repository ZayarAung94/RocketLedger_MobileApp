import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

class PaymentTransaction extends StatelessWidget {
  const PaymentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      color: AppColors.background,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Income",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Text(
                  "100,000",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: AppColors.backgroundAlt,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dataRow(title: 'From :', value: '50'),
              dataRow(title: 'To :', value: '10,000'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dataRow(title: 'Type :', value: '50'),
              dataRow(title: 'Status :', value: '10,000'),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget dataRow({required String title, required String value}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(value),
          ],
        ),
      ),
    );
  }
}
