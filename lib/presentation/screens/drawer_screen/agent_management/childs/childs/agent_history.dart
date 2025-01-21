import 'package:flutter/material.dart';
import 'package:rocketledger/core/constants/app_colors.dart';

class AgentHistory extends StatelessWidget {
  const AgentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "12-01-2025",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "(Morning)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.primary,
                      child: Text(
                        "88",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.background,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                dataRow(
                  label: "Total Sales",
                  value: "1,000,000 K",
                ),
                dataRow(
                  label: "Total Commission",
                  value: "80,000 K",
                ),
                dataRow(
                  label: "Lucky Bet Amount",
                  value: "20,000 K",
                ),
                dataRow(
                  label: "Payout Amount",
                  value: "800,000 K",
                ),
                dataRow(
                  label: "Profit/Loss",
                  value: "90,000 K",
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget dataRow({
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$label : ",
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
