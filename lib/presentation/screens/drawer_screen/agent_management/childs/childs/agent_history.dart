import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          child: const Card(
            margin: EdgeInsets.all(5),
            color: AppColors.background,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                children: [
                  Row(
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
                  Divider(),
                  AppDataRow(
                    label: "ရောင်းအား",
                    value: "1,000,000 K",
                  ),
                  AppDataRow(
                    label: "ကော်မရှင်",
                    value: "80,000 K",
                  ),
                  AppDataRow(
                    label: "ပေါက်ငွေ",
                    value: "20,000 K",
                  ),
                  AppDataRow(
                    label: "ရော်ငွေ",
                    value: "800,000 K",
                  ),
                  AppDataRow(
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
