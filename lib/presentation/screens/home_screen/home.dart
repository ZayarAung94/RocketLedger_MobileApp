import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/widgets/order_list_view.dart';

import '../../widgets/data_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(8.0),
          color: AppColors.background,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(width: double.infinity),
                Text(DateFormat('dd MMMM , yyyy').format(DateTime.now())),
                const Text(
                  "09:00 am ~ 11:30 am",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    text: "Total : ",
                    style: TextStyle(
                      // fontFamily: "MyanmarSabae",
                      fontWeight: FontWeight.w200,
                    ),
                    children: [
                      TextSpan(
                        text: "100,000,000",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.accent,
                          fontFamily: "MyanmarSabae",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const AppDataRow(
                  label: "ထိုးကွက်ပေါင်း",
                  value: "87",
                ),
                const AppDataRow(
                  label: "စုစုပေါင်း ကော်မရှင်",
                  value: "1,000,000 Ks",
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          child: OrderListView(),
        ),
      ],
    );
  }
}
