import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/agent_management/childs/childs/history_childs/agent_order.dart';
import 'package:rocketledger/presentation/widgets/data_row.dart';

class AgentReport extends StatelessWidget {
  const AgentReport({super.key});

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
            margin: const EdgeInsets.all(8),
            elevation: 10,
            color: AppColors.background,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
                              text: 'Agent Name ',
                              style: TextStyle(),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' (123456)',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            '12/12/2021 (12:12 am ~ 12:12 pm)',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "10,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  const AppDataRow(label: 'ထိုးကွက်', value: '79'),
                  const AppDataRow(label: 'စုစုပေါင်းရောင်းအား', value: '10,000,000'),
                  const AppDataRow(label: 'ကော်မရှင်း (%)', value: '10'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
