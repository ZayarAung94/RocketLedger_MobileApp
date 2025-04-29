import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_colors.dart';
import '../screens/drawer_screen/game_history/childs/game_detail.dart';
import '../widgets/data_row.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => GameDetail());
      },
      child: Card(
        margin: const EdgeInsets.all(5),
        color: AppColors.backgroundAlt,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              const AppDataRow(label: 'ကော်မရှင် (ရငွေ)', value: 'value'),
              const AppDataRow(label: 'ကော်မရှင် (ပေးငွေ)', value: 'value'),
              const AppDataRow(label: 'ရော်ငွေ', value: 'value'),
              const AppDataRow(label: 'အမြတ်/အရှုံး', value: 'value'),
            ],
          ),
        ),
      ),
    );
  }
}
