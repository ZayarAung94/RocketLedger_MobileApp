import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/widgets/order_list_view.dart';

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
                dataRow(
                  label1: "ထိုးကွက်ပေါင်း :",
                  label2: "ကော်မရှင် :",
                  value1: "89",
                  value2: "1,000,000 Ks",
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

  Widget dataRow({
    required String label1,
    required String label2,
    required String value1,
    required String value2,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          dataBlock(label: label1, value: value1),
          const SizedBox(width: 20),
          dataBlock(label: label2, value: value2),
        ],
      ),
    );
  }

  Expanded dataBlock({
    required String label,
    required String value,
  }) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w200,
              fontFamily: "MyanmarSabae",
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "MyanmarSabae",
            ),
          ),
        ],
      ),
    );
  }
}
