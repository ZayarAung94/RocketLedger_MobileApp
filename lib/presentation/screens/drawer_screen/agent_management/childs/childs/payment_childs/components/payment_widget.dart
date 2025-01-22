import 'package:flutter/material.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

import '../../../../../../../../core/constants/app_colors.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: "Agent's Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: " (123456789)",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "12-01-2025",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: const TextSpan(
                    text: "2,000,000",
                    style: TextStyle(
                      color: AppColors.accent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: " Ks",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            const AppDataRow(
              label: "Transaction Type",
              value: "Income",
              valueColor: Colors.green,
            ),
            const AppDataRow(label: "Date", value: "12-01-2025"),
            const AppDataRow(label: "Time", value: "11:00 AM"),
            const AppDataRow(
              label: "Status",
              value: "Pending",
            ),
          ],
        ),
      ),
    );
  }
}
