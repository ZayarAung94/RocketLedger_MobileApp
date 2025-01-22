import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketledger/core/constants/app_colors.dart';
import 'package:rocketledger/presentation/screens/drawer_screen/agent_management/childs/childs/history_childs/agent_order.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dataRow(title: 'ထိုးကွက်', value: '50'),
                      const SizedBox(width: 10),
                      dataRow(title: 'ပျမ်းမျှ ထိုးငွေ', value: '10,000'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dataRow(title: 'အနည်းဆုံး ထိုးငွေ', value: '100'),
                      const SizedBox(width: 10),
                      dataRow(title: 'အများဆုံး ထိုးငွေ', value: '2,000,000'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      dataRow(title: 'ကော်မရှင် (%)', value: '7'),
                      const SizedBox(width: 10),
                      dataRow(title: 'ကော် (K)', value: '100,000'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget dataRow({required String title, required String value}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
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
