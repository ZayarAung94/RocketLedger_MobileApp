import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

import 'history_childs/agent_order.dart';

class AgentHistory extends StatelessWidget {
  const AgentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Get.to(() => const AgentOrderPage());
          },
          child: Card(
            margin: const EdgeInsets.all(5),
            color: AppColors.background,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: AppColors.primary,
                            child: Text(
                              "88",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                DateFormat("dd MMM, yyyy").format(DateTime.now()),
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const Text(
                                "မနက်ပိုင်း",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "10,000,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const AppDataRow(
                    label: "ကော်မရှင်",
                    value: "80,000 K",
                  ),
                  const AppDataRow(
                    label: "ရော်ငွေ",
                    value: "800,000 K",
                  ),
                  const AppDataRow(
                    label: "အမြတ်/အရှုံး",
                    value: "90,000 K",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
