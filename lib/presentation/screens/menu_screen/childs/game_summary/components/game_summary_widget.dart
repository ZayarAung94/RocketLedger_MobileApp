import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

class GameSummaryWidget extends StatelessWidget {
  const GameSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(8),
            color: AppColors.background,
            elevation: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.accent,
                    child: Text(
                      "88",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: AppColors.background,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    DateFormat('dd MMM, yyyy (EEEE)').format(DateTime.now()),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "မနက်ပိုင်း",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            color: AppColors.background,
            elevation: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Column(
                children: [
                  AppDataRow(label: "စုစုပေါင်း ရောင်းအား", value: 'value'),
                  Divider(),
                  AppDataRow(label: "အေးဂျင့်ပေါင်း", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ထိုးကွက်ပေါင်း", value: 'value'),
                  Divider(),
                  AppDataRow(
                    label: "အမြတ်/အရှုံး (အသားတင်)",
                    value: 'value',
                    valueColor: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            color: AppColors.background,
            elevation: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Column(
                children: [
                  AppDataRow(label: "ကိုယ်ပိုင် ရောင်းအား", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ကိုယ်ပိုင် ကော်မရှင်", value: 'value'),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            color: AppColors.background,
            elevation: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Column(
                children: [
                  AppDataRow(label: "အေးဂျင့် ကော်မရှင်ပေါင်း", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ပေါက်သည့် အေးဂျင့်ပေါင်း", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ပေါက်ငွေ ပမာဏ", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ရော်ငွေ ပမာဏ", value: 'value'),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            color: AppColors.background,
            elevation: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Column(
                children: [
                  AppDataRow(label: "ခေါင်းချိုး ပမာဏ", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ခေါင်းချိုး ကော်မရှင်", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ခေါင်ချိုး ပေါက်ငွေ", value: 'value'),
                  Divider(),
                  AppDataRow(label: "ခေါင်ချိုး အရော်ရငွေ", value: 'value'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
